<?php

if (function_exists('opcache_reset')) {
    opcache_reset();
    echo "OK\n";
} else {
    echo "KO\n";
}
