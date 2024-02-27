<?php

// Default url: /index.php?l=web&c=index&m=index

// Entry mark
define('ACCESS', TRUE);

// Define the project root directory
define('ROOT_PATH', str_replace('\\', '/', __DIR__) . '/');

// Load the initialization file
require ROOT_PATH . 'core/initial.php';

// Activate the initialization file
\core\Initial::start();

// Default url: /index.php?l=web&c=index&m=index
// Notes url: /index.php?l=web&c=note&m=index
// Logs url: /index.php?l=web&c=index&m=log