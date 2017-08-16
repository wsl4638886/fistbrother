<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$config = include("rpc_config.php");

/**
 * 初始化mysql
 * @global array $db_servers
 */
function init_mysql() {
    global $config;
    global $db_servers;
    $db_servers = array(
        'default' => array(
            'host' => $config['db_host'],
            'port' => $config['db_port'],
            'user' => $config['db_user'],
            'pwd' => $config['db_pwd'],
            'dbname' => $config['db_name'],
            'charset' => $config['charset']
        ),
    );
}


/**
 * 获取返回内容
 * @param type $url
 * @return type
 */
function file_get_contents_curl($url) {

    if (function_exists('curl_init')) {
        $curl = curl_init();
//         $cookie_file    =    tempnam('./temp','cookie');
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
//        curl_setopt($curl, CURLOPT_COOKIEJAR, $cookie_file);
//        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
//        curl_setopt($curl, CURLOPT_HTTPHEADER,array('Accept-Encoding: gzip, deflate'));
//        curl_setopt($curl, CURLOPT_ENCODING, 'gzip,deflate');//这个是解释gzip内容.................
        curl_setopt($curl, CURLOPT_TIMEOUT, 5); // 设置超时限制防止死循环
        curl_setopt($curl,CURLOPT_USERAGENT,"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)"); 
        $data = curl_exec($curl); 
        curl_close($curl);
    } else {
        $data = file_get_contents($url);
    }
    
    return $data;
}
    
/**
* curl post数据
* @param $url
* @param $data
* @return mixed
*/
function curlPost($url, $data){
    $ch = curl_init();
    $header = "Accept-Charset: utf-8";
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array($header));
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
   
    $tmpInfo = curl_exec($ch);
    $errorno=curl_errno($ch);
    
    $tmpInfo = json_decode($tmpInfo,true);
    return $tmpInfo;
}


function get_access_token($appid,$appsecret){
    global $config;
    $appid = $appid?$appid:APPID;
     $appsecret = $appsecret?$appid:APPSECRET;
    $url = $config['api_base'].'Public/get_access_token/appid/'.$appid.'/appsecret/'.$appsecret;
    
    $content = file_get_contents_curl($url);
   
    $response = json_decode($content,true);
  
    if($response['success']===true){
        return $response['data']['access_token'];
    }else{
        return false;
    }
  
}


function write_log($type,$fname,$content){
    $save_file = SCRIPT_PATH.'/log/'.$type.'/'.$fname;
    file_put_contents($save_file, $content,FILE_APPEND);
}


    

?>
