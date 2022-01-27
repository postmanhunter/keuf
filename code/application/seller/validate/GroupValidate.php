<?php

namespace app\seller\validate;

use think\Validate;

class GroupValidate extends Validate
{
    protected $rule =   [
        'group_name'  => 'require'
    ];

    protected $message  =   [
        'group_name.require' => '分组名称不能为空'
    ];
}