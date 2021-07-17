<?php
/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here. You can see a
 * list of the available settings in vendor/craftcms/cms/src/config/GeneralConfig.php.
 *
 * @see \craft\config\GeneralConfig
 */

return [
    // Global settings
    '*' => [
        // Default Week Start Day (0 = Sunday, 1 = Monday...)
        'defaultWeekStartDay' => 1,

        // Whether generated URLs should omit "index.php"
        'omitScriptNameInUrls' => true,

        // Control Panel trigger word
        'cpTrigger' => 'admin',

        // The secure key Craft will use for hashing and encrypting data
        'securityKey' => getenv('SECURITY_KEY'),
        
        // Custom error template config
        'errorTemplatePrefix' => '_errors/',

        // CMS Aliases
        'aliases' => [
            '@image' => getenv('ASSET_BASE_URL') . '/image',
            '@video' => getenv('ASSET_BASE_URL') . '/video',
            '@embed' => getenv('ASSET_BASE_URL') . '/embed',
            '@audio' => getenv('ASSET_BASE_URL') . '/audio',
            '@documents' => getenv('ASSET_BASE_URL') . '/documents',

            '@imageRoot' => dirname(__DIR__) . '/public/uploads/image',
            '@videoRoot' => dirname(__DIR__) . '/public/uploads/video',
            '@embedRoot' => dirname(__DIR__) . '/public/uploads/embed',
            '@audioRoot' => dirname(__DIR__) . '/public/uploads/audio',
            '@documentsRoot' => dirname(__DIR__) . '/public/uploads/documents',
        ],

    ],

    // Dev environment settings
    'dev' => [
        // Dev Mode (see https://craftcms.com/guides/what-dev-mode-does)
        'devMode' => true,

        // Mamp database exports
        'backupCommand' => getenv('BACKUP_COMMAND'),
        'restoreCommand' => getenv('RESTORE_COMMAND'),
    ],

    // Staging environment settings
    'staging' => [
        // Set this to `false` to prevent administrative changes from being made on staging
        'allowAdminChanges' => true,
    ],

    // Production environment settings
    'production' => [
        // Set this to `false` to prevent administrative changes from being made on production
        'allowAdminChanges' => true,
    ],
];
