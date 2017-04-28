<?php
namespace Xinda\Controller;
class TestController extends WebInfoController {
    public function index(){
        $text=$_GET['text'];
        //图文的形式回复
        $m=M('tp_product');
        $map['name']=array('like','%'.$text.'%');
        $data=$m->where($map)->field('name, content, productImg,productId')->order('sn')->limit(10)->select();
        $l=sizeof($data);
        dump($l);
        
        if($l==9){
            $arr=array(
                array(
                    'title'=>$data[0]['name'],
                    'description'=>$data[0]['content'],
                    'picUrl'=>'http://www.zhihuixinda.com/Upload/'.$data[0]['productimg'],
                    'url'=>'http://www.zhihuixinda.com/index.php/Xinda/Service/index/id/'.$data[0]['productid'].'/wxOpenId/'.$toUser.'/wxAppId/'.$fromUser,
                ),
            );
        }elseif ($l==1){
            $arr=1;
        }
        
        
        
        
        dump($arr);
        
       
    }
    
}