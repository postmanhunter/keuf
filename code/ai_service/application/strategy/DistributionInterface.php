<?php
/**
 * Created by PhpStorm.
 * User: Cc
 * Email: ega88761@qq.com
 * Date: 2020/6/30
 * Time: 9:43 PM
 */
namespace app\strategy;

interface DistributionInterface
{
    public function setDb($db);

    public function doDistribute(array $kefuMap);
}