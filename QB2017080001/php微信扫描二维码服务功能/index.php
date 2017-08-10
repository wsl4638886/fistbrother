<?php

error_reporting(0);
set_time_limit(0);
header("Content-type:text/html;charset=utf-8");
define("SCRIPT_PATH",  dirname(__FILE__));
$year = date('Y');
session_start(); 
include("../common/mysql.php");
include("../common/function.php");

$show_end = 0;
$msg = '';
ini_set('date.timezone', 'Asia/Shanghai');  //设置时区

init_mysql();
// var_dump($_SESSION['count']=0);

$userid = isset($_SESSION['userid'])?$_SESSION['userid']:0;
 $sname = $_REQUEST['cat'];
 $lists = Mysql::querytoarray('select * from tp_users order by id desc');
     $sname = $_REQUEST['cat'];
    if(empty($sname)){
        echo '缺少参数，请输入工作内容！';exit();
    }
if(!empty($userid)){
    
    setEnd($userid,$sname);

}else{

}



     function setEnd($userid,$sname){
        $where['userid'] = $userid;
        $where['end_time'] = 0;
        
        $info = Mysql::findOne('select * from tp_user_service where userid='.$userid.' and service_name="'.$sname.'" and end_time=0 order by id desc');
//        if()
//        var_dump('select * from tp_user_service where userid='.$userid.' and end_time=0 order by id desc',$info);die();
//        $info = db('user_service')->where($where)->order('id desc')->find();
        $ctime = time();
        $res = false;

        if(!empty($info)){
            // if($info['service_name'] != $sname){
            //     echo '您当前已经开始服务，请确认当前服务内容是否正确！';exit();
            // }
              if($info['start_time'] < strtotime(date('Y-m-d'))){  //非今日开始服务。重置
                  $end_time = strtotime(date('Y-m-d 23:59:59',$info['start_time']));
                }else{
                    $end_time = $ctime;
                }
                $upsql = 'update tp_user_service set end_time='.$end_time.' where id='.$info['id'];
                $res = Mysql::query($upsql);               

//             $res = db('user_service')->where('id='.$info['id'])->setField('end_time',$end_time);
        }else{
            return ;
             // echo '当前没有进行中的服务！';//exit();
        }
        if($res){
            $count = intval($_SESSION['count']);
          
            if($count==1){
                 $_SESSION['userid'] = 0;
             }
              $count--;
            $_SESSION['count'] = $count;
             $str = '服务结束，当前服务总计:'.format_time($end_time-$info['start_time']);
             
//            echo '服务结束，当前服务总计:'.format_time($end_time-$info['start_time']);
//            echo "\n";

            $user = Mysql::findOne('select * from tp_users where id='.$userid);

//            echo '服务人：'.$user['username'].', 服务项目：'.$sname;
            
            $str .= '服务人：'.$user['username'].', 服务项目：'.$sname;
            global $show_end;
            global $msg;
            $show_end = 1;
            $msg = $str;
          
        }
   
    }
    
      function format_time($seconds=0){
        $hour = 0;
        $minute = 0;
        if($seconds>=3600){
            $hour = intval($seconds/3600);
            $seconds = $seconds%3600;
        }
       
        if($seconds>=60){
            $minute =intval($seconds/60);
            $seconds = $seconds%60;
        }
        return $hour.'小时'.$minute.'分钟'.$seconds.'秒钟';
        
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="0" />
	<meta name="description" content="" />
	<meta name="Keywords" content="" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        td{
           
        }
    </style>
</head>
<body class="loginbg">
	<div class="content">
		<div class="loginimg"></div>
		<div class="zctk">
            <style type="text/css">
			/*table{ padding-left:10%;}*/
			td{
				text-align:center;
				font-size:14px;
				color:#FFF;
                                 height: 30px
				}
			</style>
            <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" height="320px" >
            <?php $count = count($lists); $loop = $count/3; for($i=0;$i<$loop;$i++){  if($i) ?>
                 <tr>
            <td align="center" width="33%"><img onclick="start_record(this)" uname="<?php echo $lists[$i*3]['username']; ?>" uid="<?php echo $lists[$i*3]['id']; ?>" src="<?php echo $lists[$i*3]['avatar']; ?>" style="height:72px;width:72px;border-radius: 50% " ></td>
             <td align="center" width="33%"><img onclick="start_record(this)" uname="<?php echo $lists[$i*3+1]['username']; ?>" uid="<?php echo $lists[$i*3+1]['id']; ?>" src="<?php echo $lists[$i*3+1]['avatar']; ?>" style="height:72px;width:72px;border-radius: 50% " ></td>
             <?php if(isset($lists[$i*3+2])){ ?>
             <td align="center" width="33%"><img onclick="start_record(this)" uname="<?php echo $lists[$i*3+2]['username']; ?>" uid="<?php echo $lists[$i*3+2]['id']; ?>" src="<?php if(isset($lists[$i*3+2])){ echo $lists[$i*3+2]['avatar'];} ?>" style="height:72px;width:72px;border-radius: 50% " ></td>
             <?php } ?>
            </tr>
                   <tr>
           <td><p><?php echo $lists[$i*3]['username']; ?></p></td>
            <td><p><?php echo $lists[$i*3+1]['username']; ?></p></td>
            <td><p><?php if(isset($lists[$i*3+2])){ echo $lists[$i*3+2]['username']; } ?></p></td>
            </tr>
            <?php } ?>
 
            </table>
               	<div class="tjbtnb"><input type="button" value="开始服务" name=""></div>
		</div>
	</div>
    
     <div class="mordal"></div>
        
        <div class="msg_alert" >
            <div class="msg">确定开始服务</div>
            <div class="btn">
                <input type="button" class="confirm" value="确定"/> 
                <input type="button" class="cancel" value="取消"/> 
            </div>
        </div>
     
     
</body>
 <script src="js/jquery-2.0.3.min.js"></script>
 <script>
        var sname = '<?php echo $sname; ?>',is_on = 0,show_end='<?php echo $show_end; ?>';

        if(show_end == 1){
             $('.msg').html('<?php echo $msg; ?>');
              $('.msg').css({'height':'5rem'});
               $('.mordal').show();
                $('.msg_alert').show();
                
                   $('.cancel').click(function(){
                 $('.mordal').hide();
                $('.msg_alert').hide();
           });
           
                 $('.confirm').click(function(){
                 $('.mordal').hide();
                $('.msg_alert').hide();
           })
        }
     
      
        function start_record(obj){
           var $this = $(obj),username = $this.attr('uname'),uid = $this.attr('uid');
           $('.selected').removeClass('selected');
           $this.addClass('selected');

       
        $('.tjbtnb input').off().on('click',function(){
            $('.msg').html('用户'+username+'确定开始'+sname+'服务？');
               $('.mordal').show();
                $('.msg_alert').show();
                is_on = 0;
                   $('.confirm').click(function(){
                   $('.mordal').hide();
                $('.msg_alert').hide();
                if(is_on==0)
                $.post(
                 '../common/request.php',{userid:uid,sname:sname},function(data){
                    console.log(data.msg);
                    is_on = 1;
                    $('.msg').html(data);
                     $('.mordal').show();
                $('.msg_alert').show();
                }  
                )
           });
           
           
//            if(confirm('用户：'+username+'确定开始'+sname+'服务？')){
//              $.post(
//                '../common/request.php',{userid:uid,sname:sname},function(data){
////                    console.log(data.msg);
//                    alert(data);
//                }  
//                )
//           }

   $('.cancel').click(function(){
                 $('.mordal').hide();
                $('.msg_alert').hide();
           })
           
           
        })
        }
        
         
    </script>
</html>
