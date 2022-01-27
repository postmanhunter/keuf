<?php
return [

    // websocket 对外服务端口
    'ws_port' => 2020,

    // http api 服务对外端口
    'api_port' => 2945,

    // gateway worker number
    'gateway_worker' => 2,

    // business worker number
    'business_worker' => 2,

    // 是否开启客服只允许单点登录 0 不开启 1 开启,
    // 切换需要重启
    'single_login' => 1,

    // 是否开启 ssl
    'is_open_ssl' => false,

    'context' => [
        'ssl' => [
            // 请使用绝对路径
            'local_cert'  => 'C:/BtSoft/panel/vhost/ssl/kf.taobyh.cn/fullchain.pem', // 也可以是crt文件
            'local_pk'  => 'C:/BtSoft/panel/vhost/ssl/kf.taobyh.cn/privkey.pem',
            'verify_peer'   => false,
            'allow_self_signed' => true,// 是否允许自签名证书。
        ]
    ],

    'database' => [
        'host'        => '127.0.0.1',
        'user'        => 'im',
        'password'    => 'im',
        'database'    => 'im',
        'port'        => '3306',
        'charset'     => 'utf8',
    ]
];