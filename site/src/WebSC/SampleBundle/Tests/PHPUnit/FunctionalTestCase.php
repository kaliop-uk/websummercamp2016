<?php

namespace WebSC\SampleBundle\Tests\PHPUnit;

use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

abstract class FunctionalTestCase extends KernelTestCase
{
    /** @var \eZ\Publish\API\Repository\Repository $repo */
    protected $repo;

    /**
     * a) We save the eZP kernel as it is most likely needed in many tests...
     * b) we use the same Symfony env for testing as specified in the environment - hence the name 'functional' test
     */
    protected function setUp()
    {
        self::bootKernel(self::getOptions());

        $this->repo =  static::$kernel->getContainer()->get('ezpublish.api.repository');
    }

    protected static function getOptions()
    {
        $options = array();

        $env = getenv('SYMFONY_ENV');
        if ($env !== false) {
            $options['environment'] = $env;
        }

        return $options;
    }
}
