<?php

return [
    'fields' => [
        'pageComponents' => [
            'groups' => [
                [
                    'label' => 'Content',
                    'types' => ['accordions', 'body', 'testimonial'],
                ],
                [
                    'label' => 'Media',
                    'types' => ['images', 'video', 'externalVideo'],
                ]
            ]
        ]
    ]
];


// 'types' => [
//     'text' => [
//         'tabs' => [[
//             'label' => 'Text',
//             'fields' => ['heading', 'text'],
//         ], [
//             'label' => 'Settings',
//             'fields' => ['columns'],
//         ]],
//         'hiddenFields' => ['backgroundColor', 'textColor'],
//     ],
//     'news' => [
//         'maxLimit' => 1,
//     ]
// ]