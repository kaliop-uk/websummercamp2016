#!/usr/bin/env php
<?php

/// @todo add support for --docker=/path/to/docker
/// @todo add support for other options, such as verbose mode

require('src/Builder.php');

function help() {
    echo "
Usage: stack.php <action>
    valid actions: build, run, stop, update, ps

";
    exit;
}

// *** live code starts here ***

if ($argc < 2 || $argv[1] == '-h' || $argv[1] == '--help') {
    help();
}

/*if ($argc < 3 || $argv[2] == 'all') {
    $images = Builder::getImages();
} else {
    $image = $argv[2];
    if (!Builder::hasImage($image)) {
        throw new \Exception("Unknown image: '$image'");
    }
    $images = array($image);
}*/

switch($argv[1]) {
    case 'build':
        // q: do we really have to always remove images before a build?
        Builder::stop(true);
        Builder::build();
        break;

    case 'run':
    case 'start':
        Builder::run();
        echo "\n" . implode("\n", Builder::ps()) . "\n";
        break;

    case 'stop':
        Builder::stop();
        break;

    case 'update':
        Builder::stop();
        Builder::update();
        Builder::build();
        Builder::run();
        echo "\n" . implode("\n", Builder::ps()) . "\n";
        break;

    case 'ps':
        echo implode("\n", Builder::ps()) . "\n";
        break;

    default:
        help();
}
