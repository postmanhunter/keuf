<?php

namespace app\seller\validate;

use think\Validate;

class KnowledgeValidate extends Validate
{
    protected $rule =   [
        'question'  => 'require',
        'answer' => 'require'
    ];

    protected $message  =   [
        'question.require' => '问题不能为空',
        'answer.require' => '答案不能为空'
    ];
}