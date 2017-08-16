<?php

/**
 * 简单mysql封装
 *
 */
class Mysql {

    /**
     * 连结实例
     */
    public static $link = array();

    /**
     * 连结到数据库
     */
    public static function connect($group = 'default') {
        if (!isset(Mysql::$link[$group])) {
            global $db_servers;
            $config = $db_servers[$group];//var_dump($config);die();
//            var_dump($db_servers);
            $curr_link = mysqli_connect($config['host'] . ':' . $config['port'], $config['user'], $config['pwd']);
            if(!$curr_link){
                die('数据库连接失败！错误信息：'.  mysqli_error());
            }
//            $curr_link = @mysqli_connect('192.168.100.101:3306','root','ubt') or die('Can not connect to databases!');

            @mysqli_select_db($curr_link,$config['dbname']);//echo($curr_link);die();
            @mysqli_query($curr_link,'SET names ' . $config['charset']) or die('set charset failed!');
            
            Mysql::$link[$group] = $curr_link;
        }
        return Mysql::$link[$group];
    }

    /**
     * 执行查询
     */
    public static function query($sql, $group = 'default', $is_write = false) {
        if (!Mysql::$link[$group])
            Mysql::connect($group);

        if ($is_write) {
            Log::log_write($sql);
//            Log::log_close();
        }
        return @mysqli_query(Mysql::$link[$group],$sql);
    }

    /**
     * 影响条数
     * 
     * @param string 配置组
     */
    public static function affected_rows($group = 'default') {
        $rows_affected = @mysqli_affected_rows(Mysql::$link[$group]);

        return $rows_affected;
    }

    /**
     * 查询结果转数组,无key
     * heleon added
     * 2013.05.02
     */
    public static function querytoarray($sql, $group = 'default', $is_write = false) {//var_dump(Mysql::$link);die();
        if (!isset(Mysql::$link[$group]))  Mysql::connect($group); 

//        if ($is_write) {
//            Log::log_write($sql);
//            Log::log_close();
//        }
        $query = @mysqli_query(Mysql::$link[$group],$sql);
//        var_dump(Mysql::$link[$group],$sql);die();
        while ($tmp = @mysqli_fetch_assoc($query)) {
            $res[] = $tmp;
        }
       
        return $res;
    }

    
    public static function findOne($sql, $group = 'default', $is_write = false){

        $list = self::querytoarray($sql, $group, $is_write);
        if(!empty($list)){
            return $list['0'];
        }
    }
    
    public static function add($tb_name, $data, $group = 'default') {
       
        $sql = 'SHOW FIELDS FROM ' . $tb_name;
        $columns = self::querytoarray($sql);
          
        foreach ($columns as $col) {
            $fields[] = $col['Field'];
        }
        foreach ($data as $key => $v) {
            if (!in_array($key, $fields)) {
                unset($data[$key]);
            }
        }
        foreach($data as $k=>&$v){
            $v = addslashes($v);
        }
        $sql = 'insert into ' . $tb_name . ' (`' . implode('`,`', array_keys($data)) . '`)
             VALUES ("' . implode('","', $data) . '")';
            //var_dump($sql);
            //exit;
        return self::query($sql);
    }

    
    public static function addAll($tb_name, $datas, $group = 'default'){
         $sql = 'SHOW FIELDS FROM ' . $tb_name;
        $columns = self::querytoarray($sql);
      
        foreach ($columns as $col) {
            $fields[] = $col['Field'];
        }
        if(!empty($datas)){
             $sql = 'insert into ' . $tb_name . ' (`' . implode('`,`', array_keys($datas[0])) . '`)
             VALUES ';
        }
        
        foreach($datas as $data){
             
             foreach ($data as $key => $v) {
                if (!in_array($key, $fields)) {
                    unset($data[$key]);
                }
            }
            foreach ($data as $k => &$v) {
                $v = addslashes($v);
            }
           
              $sql .= '("' . implode('","', $data) . '"),';
        }
        $sql = substr($sql, 0,  strlen($sql)-1);
        $res = self::query($sql);
        
        file_put_contents('temop.txt', $sql,FILE_APPEND);
       return $res;

    }
    
    
    public static function save($tb_name, $data, $where = '', $group = 'default') {
        $sql = 'SHOW FIELDS FROM ' . $tb_name;
        $columns = self::querytoarray($sql);
        foreach ($columns as $col) {
            $fields[] = $col['Field'];
        }
        foreach ($data as $key => $v) {
            if (!in_array($key, $fields)) {
                unset($data[$key]);
            }else{
                $data[$key] = addslashes($v);
            }
        }

//        foreach($data as $k=>&$v){
//            $v = addslashes($v);
//        }

//        var_dump($data);die();
        $sql = 'update ' . $tb_name . ' set ';
        foreach ($data as $k => $v) {
            $sql .= $k . '="' . $v . '",';
        }
        $sql = substr($sql, 0, strlen($sql) - 1);
        $sql.=' where ';
//        var_dump($sql);die();
        if ($where) {
            $count = count($where);
            $key_arr = array_keys($where);
            $value_arr = array_values($where);
            $sql.= $key_arr[0] . '=' . $value_arr[0];
        }else{
            $sql .=' id= '.$data['id'];
        }
//        $sql = addslashes($sql);
//var_dump($sql);
        return self::query($sql);
    }

    //获取最新插入数据id
    public static function get_last_insert_id($group = 'default') {
        if (!Mysql::$link[$group])
            Mysql::connect($group);
        $last_arr = self::querytoarray('SELECT LAST_INSERT_ID() as lsid');
        //var_dump($last_arr[0][lsid]);
        return $last_arr[0]['lsid'];
    }

    /**
     * 关闭数据库连结
     */
    public static function close($group = 'default') {
        @mysqli_close(Mysql::$link[$group]);
    }

}