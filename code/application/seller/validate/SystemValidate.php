<?php

namespace app\seller\validate;

use think\Validate;

class SystemValidate extends Validate
{
    protected $rule =   [
        'hello_word'  => 'require'
    ];

    protected $message  =   [
        'hello_word.require' => '问候语不能为空'
    ];
}