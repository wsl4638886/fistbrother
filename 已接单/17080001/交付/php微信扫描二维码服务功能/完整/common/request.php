<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

error_reporting(0);
set_time_limit(0);
header("Content-type:text/html;charset=utf-8");
define("SCRIPT_PATH",  dirname(__FILE__));
$year = date('Y');
session_start(); 
include("../common/mysql.php");
include("../common/function.php");



ini_set('date.timezone', 'Asia/Shanghai');  //设置时区

init_mysql();


$request = $_REQUEST;

$userid = $request['userid'];
$suserid =  $_SESSION['userid'];
$sname = $request['sname']?$request['sname']:'送饭';
//        $sname = mb_convert_encoding($sname,'utf-8','gb2312');
$count = intval($_SESSION['count']);
// var_dump($count);
if(!empty($userid)){
 
    if(!empty($suserid) && $userid!=$suserid){
        echo '不能给其他用户开启服务！';exit();
//        $this->error('不能给其他用开启服务！');
    }
    $_SESSION['userid'] = $userid;

    $time = time();
    $data['userid'] = $userid;

    $data['end_time'] = 0;
    $info = Mysql::findOne('select * from tp_user_service where userid='.$userid.' and end_time=0 and service_name="'.$sname.'"');

//    $info = db('user_service')->where($data)->find();
    if(empty($info)){
        $data['start_time'] = $time;
        $data['service_name'] = $sname;
        $res = Mysql::add('tp_user_service', $data);
        $sid = Mysql::get_last_insert_id();
        // 获取所有老人信息
        $olders = Mysql::querytoarray('select * from tp_old');
        //var_dump($olders);
        $detail['sid'] = $sid;
        
        //$abc = insert into 'tp_detalis' (select *,1000 as sid from old)

        $abc = Mysql::add('tp_details',$sid);
         foreach($olders as $old=>$o){
           $abc = Mysql::add('tp_details',$o,$detail);
           var_dump($abc);
          }
         
              // var_dump($abc);
              // exit;

        //$ocount = count($olders);
        //if($ocount > 0){
          //  $index = mt_rand(0,($ocount-1)); //随机拿出一个老人来服务
           // $old = $olders[$index];
            

            // $detail['oname'] = $old['oname'];
              //unset($old['id']);
              //$detail = array_merge($detail,$olders);
              // var_dump($detail);
              //   exit;
              
        //}
    




//        $res = db('user_service')->insert($data);
    }else{
        if($info['start_time'] < strtotime(date('Y-m-d'))){  //非今日开始服务。重置
            $data['end_time'] = strtotime(date('Y-m-d 23:59:59',$info['start_time']));
            Mysql::query('update tp_user_service set end_time='.$data['end_time'].' where userid='.$userid.' and end_time=0');
//            $res = db('user_service')->where('id='.$info['id'])->update($data);
            unset($data['end_time']);
            $data['start_time'] = $time;
             $data['service_name'] = $sname;
             $res = Mysql::add('tp_user_service', $data);
//             $res = db('user_service')->insert($data);
        }else{
            echo '当前用户已经在服务中！';exit();
//            $this->error('当前用户已经在服务中！');
        }
//                $data['service_name'] = $sname;
//                $res = db('user_service')->where('id='.$info['id'])->update($data);

    }
    if($res){
        $count++;
        $_SESSION['count'] = $count;
        // var_dump($count);
        echo '服务开始，开始时间:'.date('Y-m-d H:i:s');exit();
//        $this->success('服务开始，开始时间:'.date('Y-m-d H:i:s'));
    }
}else{
    echo '系统错误！';exit();
//    $this->error('系统错误！');
}
?>
