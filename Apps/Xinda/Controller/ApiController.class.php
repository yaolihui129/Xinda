<?php
namespace Xinda\Controller;
use Think\Controller;
class ApiController extends Controller {
    public function test(){
               
        echo '您购买的是：'.I('name').'团购价格为：'.I('jiage');
    }
    public function ad(){
        $b=I('key');
        $pic='';
        if(C('apiKey')==$b){
            $where=array('prodid'=>C('PRODID'),'state'=>5);
            $pic=M('tp_ad')->where($where)->order('utime desc')->field('img,url')->select();
            $pic=$this->jsonEncode(200,'ok',$pic);          
        }else {
            $pic=$this->jsonEncode(405,'shib',$b);
        }
        echo $pic;
    }
    
    public function activity(){
        $where=array('prodid'=>C('PRODID'),'state'=>5);
        $data=M('tp_activity')->where($where)->order('utime desc')->select();
        $arr=self::xmlEncode(200,"ok",$data);              
        echo $arr;
    }

    
    public function login(){
        $id='gh_3e253e0b66bb';
        $appid=trim('wxe6f24ce3395cb972');
        $secret=trim('1eb6356e949c6ce165e2cf7ff085e782');
        $code=trim(I('code'));
        //https://api.weixin.qq.com/sns/jscode2session?appid=APPID&secret=SECRET&js_code=JSCODE&grant_type=authorization_code
        $url=trim('https://api.weixin.qq.com/sns/jscode2session?appid='.$appid.'&secret='.$secret.'&js_code='.$code.'&grant_type=authorization_code');
        $arr= json_decode(httpGet($url), true);
        echo $this->jsonEncode(200,'ok',$arr);       
       
    }
    
    public function upload(){
        if(IS_POST){
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize  =   3145728 ;// 设置附件上传大小
            $upload->exts   =   array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath =   './Uploads/'; // 设置附件上传根目录
            $upload->savePath =   ''; // 设置附件上传（子）目录
            // 上传文件
            $info  =  $upload->upload();
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                //插入到数据库中
            }
        }
    }
    
    public function createwt(){
        
    }
    
    public function insert(){
        $m=D(I('table'));
        if (IS_GET){
            $_GET['adder']=$_SESSION['realname'];
            $_GET['moder']=$_SESSION['realname'];
            $_GET['createTime']=date("Y-m-d H:i:s",time());
            
            if(!$m->create($_GET)){
                echo  self::jsonEncode(402,'fail',I('table'));
            }
            $list=$m->add($_GET);
            if($list){
               echo  self::jsonEncode(200,'ok',$list);
            }else{
               echo  self::jsonEncode(403,'fail',$list);
            }
        }else {
            $_POST['adder']=$_SESSION['realname'];
            $_POST['moder']=$_SESSION['realname'];
            $_POST['createTime']=date("Y-m-d H:i:s",time());
            if(!$m->create()){
                echo  self::jsonEncode(402,'fail',I('table'));
            }
            
            $list=$m->add();
            if($list){
                  echo  self::jsonEncode(200,'ok',$list);
            }else{
                echo  self::jsonEncode(403,'fail',$list);
            }
        }
    }
    
    public function update(){//修改
        if (IS_GET){
            $_GET['moder']=$_SESSION['realname'];
            if (D(I('table'))->save($_GET)){
                 echo  self::jsonEncode(200,'ok',$list);
            }else{
                 //修改失败
            }
        }else {
            $_POST['moder']=$_SESSION['realname'];
            if (D(I('table'))->save($_POST)){
                 //修改成功
            }else{
                 //修改失败
            }
        }
    }
    
    //json
    public static function jsonEncode($code,$message='',$data='')
    {
        if(!is_numeric($code))
        {
            return '';
        }
    
        $result = array(
            'code' => $code,
            'message' => $message,
            'data' => $data,
        );
        header("Content-type:text/json;chaset=utf-8");
        return json_encode($result);
    }
    
    //xml接口
    public static function xmlEncode($code,$message,$data=array())
    {
        if(!is_numeric($code))
        {
            return '';
        }
    
        $result = array(
            'code' => $code,
            'message' => $message,
            'data' => $data,
        );
    
        header("Content-type:text/xml;chaset=utf-8");
        $xml = "<?xml version='1.0' encoding='utf-8'  ?>\n";
        $xml .= "<root>\n";
        $xml .= self::xmlToEncode($result);
        $xml .=    "</root>\n";
    
        return $xml;
    
    }
    
    //xml内容循环
    public static function xmlToEncode($data)
    {
        if(empty($data))
        {
            return '';
        }
        $xml = $attr = '';
        foreach ($data as $key => $value)
        {
            if(is_numeric($key))
            {
                $attr = "id='{$key}'";
                $key = "item";
            }
            $xml .= "<{$key} {$attr}>";
            $xml .= is_array($value) ? self::xmlToEncode($value) : $value ;
            $xml .= "</{$key}>\n";
        }
    
        return $xml;
    }
    
}
