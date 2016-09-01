<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Control Panel Vhost</title>
</head>
<body>
    <h1>Control Panel for eZDeploy Docker platform - Web Summercamp 2016</h1>

    <h2>Web server</h2>
    <ul>
        <li><a href="/web/phpinfo.php">PHP Info</a></li>
        <li><a href="/web/ocp.php">PHP Opcache Info</a></li>
        <li><a href="/web/server-status">Apache Server Status</a></li>
        <li><a href="/web/server-info">Apache Server Info</a></li>
    </ul>

    <h2>Other servers</h2>
    <ul>
        <li><a href="/dockerui/">Docker management</a></li>
        <li><a href="/maildev/">Maildev</a></li>
        <li><a href="/memcached/">Memcache</a></li>
        <li><a href="/nginx/">Nginx</a></li>
        <li><a href="/pma/index.php">PhpMyAdmin</a></li>
        <li><a href="/solr/">Solr</a></li>
        <li><a href="/varnish/html/">Varnish</a></li>
    </ul>

    <p>Credentials for Varnish: varnish / CacheMeIfYouCan</p>
<?php
    if (isset($_SERVER["MYSQL_ROOT_PASSWORD"])) {
        echo '<p>Credentials for the database (phpmyadmin): root / '.htmlspecialchars($_SERVER["MYSQL_ROOT_PASSWORD"]) . '</p>';
    } else {
        echo '<p>Credentials for the database (phpmyadmin): look in the docker.compose.env or docker.compose.env.local file</p>';
    }
?>
    <h3>Symfony environments made available to the Web container:</h3>
    <ul>
        <li>Direct access: <b><?php echo htmlspecialchars(getenv('SYMFONY_ENV_NOVARNISH')); ?></b></li>
        <li>Accessed via varnish: <b><?php echo htmlspecialchars(getenv('SYMFONY_ENV_WITHVARNISH')); ?></b></li>
    </ul>

</body>
</html>
