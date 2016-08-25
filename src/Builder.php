<?php

/**
 * @todo add namespace, move to autoloading (use composer?)
 * @todo move away from pure static methods and vars
 *
 * @todo allow for docker-compose.conf.local.sh
 * @todo shall we check for presence of sh config file and give a warning if not found?
 */
class Builder {

    protected static $docker = 'docker';
    protected static $dockerCompose = 'docker-compose';
    protected static $dockerComposeConfigFile = 'docker-compose.conf.sh';
    protected static $git = 'git';

    /**
     * @throws Exception
     * @todo check for docker >= 1.10
     */
    protected static function checkPrerequisites()
    {
        self::exec(self::composeCmd() . ' -v', $out, $retCode);
        $versionString = explode(',', $out[0], 2);
        $versionString = str_replace('docker-compose version ', '', $versionString[0]);
        if (version_compare($versionString, '1.7', '<')) {
            throw new Exception('Docker-compose 1.7 or later is required');
        }
    }

    public static function run()
    {
        self::stop();
        self::exec(self::composeCmd() . ' up -d', $out, $retCode);
    }

    /**
     * @param bool $cleanup remove images besides stopping containers
     */
    public static function stop($cleanup = false)
    {
        self::exec(self::composeCmd() . ' stop', $output, $retCode);

        if ($cleanup) {
            $imagePrefix = self::getImagePrefix();

            /// NB: using 'docker-compose ps' might be easier... we stick to the 'safe' way of finding all containers :-)
            self::exec(escapeshellcmd(self::$docker) . ' ps -q -a', $dockers, $retCode);

            foreach ($dockers as $docker) {
                $out = array();
                self::exec(escapeshellcmd(self::$docker) . ' inspect --format=\'{{.Name}}\' ' . escapeshellarg($docker), $out, $retCode);

                // note: docker name inspection returns a string prefixed by /
                if (strpos($out[0], $imagePrefix) === 1) {
                    self::exec(escapeshellcmd(self::$docker) . ' rm ' . escapeshellarg($docker), $out, $retCode);
                }
            }
        }
    }

    /**
     * @return array stdout+stderr with list of docker processes
     */
    public static function ps()
    {
        self::exec(self::composeCmd() . ' ps', $out, $retCode);
        return $out;
    }

    public static function build()
    {
        self::exec(self::composeCmd() . ' build', $out, $retCode);
    }

    public static function update()
    {
        self::exec(escapeshellcmd(self::$git) . ' pull', $out, $retCode);
    }

    /// @todo add a debug mode
    protected static function exec($cmd, &$out = null, &$retcode = null)
    {
echo "Executing: $cmd\n";
        exec($cmd, $out, $retCode);
    }

    /**
     * @return string the shell command to run docker-compose, including setting env vars
     */
    protected static function composeCmd()
    {
        // hackish, but seems to work...
        $env = '';
        if (is_file(self::$dockerComposeConfigFile)) {
            /// we expect the sh file to only contain export statements...
            $lines = explode("\n", str_replace("\r\n", "\n", file_get_contents(self::$dockerComposeConfigFile)));
            $exports = array();
            foreach ($lines as $line) {
                if (strpos($line, 'export ') === 0) {
                    $exports[] = substr($line, 7);
                }
            }

            $env = implode(' ', $exports);
            if (count($exports)) $env .= ' ';
        }

        return $env . escapeshellcmd(self::$dockerCompose);
    }

    protected static function getImagePrefix()
    {
        $matches = array();
        if (!preg_match('/export COMPOSE_PROJECT_NAME=(.*)/', file_get_contents(self::$dockerComposeConfigFile), $matches))
            throw new Exception('Missing COMPOSE_PROJECT_NAME in config file '.self::$dockerComposeConfigFile);
        return $matches[1];
    }
}
