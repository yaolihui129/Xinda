<?php
namespace Xinda\Controller;
class ServiceController extends WebInfoController {  
    function init(){
        $info=array(
            'table'=>'tp_product',
            'table1'=>'tp_norms',
            'name'=>'Product',
        );
        return $info;
    }
    public function index(){
        $info=$this->init();
        $id=I('id');
        $JC=C('PRODUCT');
        $this->assign('JC',$JC);
        getWebInfo($JC);//获取网页信息  
        if(I('wxOpenId')){//微信免登陆
            $this->weiXinLogin(I('wxAppId'),I('wxOpenId'));
        }                
        //获取商品信息
        $arr=M($info['table'])
        ->field('id,type,cateid,brand,name,content,guig1,guig2,guig3,guig4,guig5,weight,zhouqi,money,smoney,wlmoney,num,img')
        ->find($id);
        $this->assign('arr',$arr);   
        $where['product']=$id;
        $where['state']=5;
        $where['isDelete']=0;
        $norm=M($info['table1'])->where($where)->select();
        $norm1[]=$norm[0]['norm1'];
        $norm2[]=$norm[0]['norm2'];
        $norm3[]=$norm[0]['norm3'];
        $norm4[]=$norm[0]['norm4'];
        $norm5[]=$norm[0]['norm5'];
        
        foreach ($norm as $n){
            if(in_array($n['norm1'], $norm1)){
            }else {
                $norm1[]=$n['norm1'];
            }
            if(in_array($n['norm2'], $norm2)){
            }else {
                $norm2[]=$n['norm2'];
            }
            if(in_array($n['norm3'], $norm3)){
            }else {
                $norm3[]=$n['norm3'];
            }
            if(in_array($n['norm4'], $norm4)){
            }else {
                $norm4[]=$n['norm4'];
            }
            if(in_array($n['norm5'], $norm5)){
            }else {
                $norm5[]=$n['norm5'];
            }
            
        }
        $this->assign('norm1',$norm1);
        $this->assign('norm2',$norm2);
        $this->assign('norm3',$norm3);
        $this->assign('norm4',$norm4);
        $this->assign('norm5',$norm5);
        
        
        //封装$where
        if(I('norm1')){
            $where['norm1']=$_SESSION[$id]['norm1']=I('norm1');
        }else{
            $where['norm1']=$_SESSION[$id]['norm1'];
        }
        if(I('norm2')){
            $where['norm2']=$_SESSION[$id]['norm2']=I('norm2');
        }else {
            if($_SESSION[$id]['norm2']){
                $where['norm2']=$_SESSION[$id]['norm2'];
            }
            
        }
        if(I('norm3')){
            $where['norm3']=$_SESSION[$id]['norm3']=I('norm3');
        }else {
            if($_SESSION[$id]['norm3']){
                $where['norm3']=$_SESSION[$id]['norm3'];
            }
            
        }
        if(I('norm4')){
            $where['norm4']=$_SESSION[$id]['norm4']=I('norm4');
        }else {
            if($_SESSION[$id]['norm4']){
                $where['norm4']=$_SESSION[$id]['norm4'];
            }
            
        }
        if(I('norm5')){
            $where['norm5']=$_SESSION[$id]['norm5']=I('norm5');
        }else {
            if($_SESSION[$id]['norm4']){
                $where['norm4']=$_SESSION[$id]['norm4'];
            }            
        }

        $normid=M($info['table1'])->where($where)->select();
        $this->assign('normid',$normid);

        $this->display();
    } 
}