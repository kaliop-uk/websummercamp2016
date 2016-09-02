<?php

namespace WebSC\SampleBundle\Tests\PHPUnit;

use Symfony\Bundle\FrameworkBundle\Client;

abstract class WebTestCase extends FunctionalTestCase
{
    /**
     * @return string including protocol (http and https) then hostname, no trailing slash
     */
    protected function getHostName()
    {
        return 'http://web';
    }
}
