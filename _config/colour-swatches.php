<?php
/**
 * color-swatches plugin for Craft CMS 3.x.
 *
 * Let clients choose from a predefined set of colours.
 *
 * @link      https://percipio.london
 *
 * @copyright Copyright (c) 2020 Percipio Global Ltd.
 */

/**
 * colour-swatches config.php.
 *
 * This file exists only as a template for the color-swatches settings.
 * It does nothing on its own.
 *
 * Don't edit this file, instead copy it to 'craft/config' as 'colour-swatches.php'
 * and make your changes there to override default settings.
 *
 * Once copied to 'craft/config', this file will be multi-environment aware as
 * well, so you can have different settings groups for each environment, just as
 * you do for 'general.php'
 */

return [

    // Predefined colours
    'colours' => [
        [
            'label'   => 'white', 
            'color'   => '#FFFFFF',
            'default' => true,
        ],
        [
            'label'   => 'primary', 
            'color'   => '#162B16',
            'default' => false,
        ],
        [
            'label'   => 'secondary', 
            'color'   => '#E5422B',
            'default' => false,
        ],
        [
            'label'   => 'gray', 
            'color'   => '#edf2f7',
            'default' => false,
        ],
    ],
];