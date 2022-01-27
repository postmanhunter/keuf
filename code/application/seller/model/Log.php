<?php

namespace app\seller\model;

use think\Model;

class Log extends Model
{
    protected $table = 'v2_chat_log';
    /**
     * 获取聊天列表
     * @param $limit
     * @param $customerName
     * @return array
     */
    public function getChatLogList($limit, $customerName)
    {
        try {

            $where = [];
            if (!empty($customerName)) {
                $where['from_name'] = $customerName;
            }

            $res = $this->where('seller_code', session('seller_code'))
                ->field('from_id,from_name,from_avatar,SUBSTR(from_id, 1, 3),create_time')
                ->group('from_id')
                ->having("SUBSTR(from_id, 1, 3) <> 'KF_'")
                ->where($where)
                ->order('log_id', 'desc')->paginate($limit);
        }catch (\Exception $e) {

            return ['code' => -1, 'data' => '', 'msg' => $e->getMessage()];
        }

        return ['code' => 0, 'data' => $res, 'msg' => 'ok'];
    }
}