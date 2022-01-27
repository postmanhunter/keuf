<?php
/**
 * Created by PhpStorm.
 * User: Cc
 * Email: ega88761@qq.com
 * Date: 2019/2/28
 * Time: 8:24 PM
 */
namespace app\admin\controller;

use think\Controller;

class Base extends Controller
{
    public function initialize()
    {
        if(empty(session('admin_user_name'))){

            $this->redirect(url('login/index'));
        }

        $this->assign([
            'admin_name' => session('admin_user_name'),
            'admin_id' => session('admin_user_id'),
            'version' => config('version.version')
        ]);
    }
}