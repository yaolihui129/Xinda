<?php
/**
 * Created by PhpStorm.
 * User: yaolihui
 * Date: 2018/2/11
 * Time: 10:46
 */

namespace Record\Controller;
class ApiController extends CommonController {
    function init(){
        $dict=array(
            'name'=>['Api','tp_apitest','tp_apiversion','tp_api_parameter','tp_api_scene'],
            'branch'=>['全部','保险服务','安鑫保','车险APP','易鑫车服','微信','第三方'],
            'agreement'=>['http','https'],
            'domain'=>['127.0.0.1','service.axb.chexian.com','cfw.taoche.com','axb.chexian.com'],
            'way'=>['GET','POST','HEAD'],
            'authority'=>['无','Auth','签名'],
            'required'=>['是','否'],
            'type'=>['Integer','String','Long','Personal','Group','Date','Boolean','List','Decimal'],
        );
        foreach ($dict['branch'] as $k=>$v){
            if($k){
                $branch[$k]['key']=$v;
                $branch[$k]['value']=$v;
            }
        }
        foreach ($dict['agreement'] as $k=>$v){
            $agreement[$k]['key']=$v;
            $agreement[$k]['value']=$v;
        }
        foreach ($dict['domain'] as $k=>$v){
            $domain[$k]['key']=$v;
            $domain[$k]['value']=$v;
        }
        foreach ($dict['way'] as $k=>$v){
            $way[$k]['key']=$v;
            $way[$k]['value']=$v;
        }
        foreach ($dict['authority'] as $k=>$v){
            $authority[$k]['key']=$v;
            $authority[$k]['value']=$v;
        }
        foreach ($dict['required'] as $k=>$v){
            $required[$k]['key']=$v;
            $required[$k]['value']=$v;
        }
        foreach ($dict['type'] as $k=>$v){
            $type[$k]['key']=$v;
            $type[$k]['value']=$v;
        }
        //封装返回数组
        $info=array(
            'name'=>$dict['name'],
            'dict'=>[
                'dict'=>$dict,
                'branch'=>$branch,
                'agreement'=>$agreement,
                'domain'=>$domain,
                'way'=>$way,
                'authority'=>$authority,
                'required'=>$required,
                'type'=>$type,],
        );
        return $info;
    }

    public function index(){
        $info=$this->init();
        $_SESSION['branch']=I('branch');
        $this->assign('branch',$info['dict']['dict']['branch']);
        if(I('id')){
            $where=$_SESSION['where']['api'];
            $_SESSION['branch']=$where['branch'];
            $this->assign('search',$_SESSION['search']['api']);
//            dump($where);
        }else{
            $search=trim(I('search'));
            $_SESSION['search']['api']=$search;
            $this->assign('search',$search);
            if($_SESSION['branch']=='全部'){
                $_SESSION['branch']='';
            }else{
                if($_SESSION['branch']){
                    $where['branch']=$_SESSION['branch'];
                }
            }
            $where['client|apiName|adress|author']=array('like','%'.$search.'%');
            $where['deleted']='0';
            $_SESSION['where']['api']=$where;
        }

        $m=M($info['name'][1]);
        $data=$m->where($where)->order('branch,adress')->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count();
        $this->assign('count',$count);

        //封装下拉列表
        $pingt=$this->select($info['dict']['branch'],'branch',1);
        $this->assign("pingt",$pingt);

        $agreement=$this->select($info['dict']['agreement'],'agreement',1);
        $this->assign("agreement",$agreement);

        $domain=$this->select($info['dict']['domain'],'domain',1);
        $this->assign("domain",$domain);

        $way=$this->select($info['dict']['way'],'way',1);
        $this->assign("way",$way);

        $authority=$this->select($info['dict']['authority'],'authority',1);
        $this->assign("authority",$authority);

        $this->display();
    }

    public function mod(){
        $info=$this->init();
        $arr=M($info['name'][1])->find(I('id'));
        $this->assign('arr',$arr);
        $where=$_SESSION['where']['api'];

        $data=M($info['name'][1])->where($where)->order('branch,adress')->select();
        $this->assign('data',$data);

        $this->assign("desc",PublicController::editor("desc",$arr['desc']));
        $this->assign("request",PublicController::editor("request",$arr['request']));
        $this->assign("response",PublicController::editor("response",$arr['response']));



        //封装下拉列表
        $pingt=$this->select($info['dict']['branch'],'branch',$arr['branch']);
        $this->assign("pingt",$pingt);

        $agreement=$this->select($info['dict']['agreement'],'agreement',$arr['agreement']);
        $this->assign("agreement",$agreement);

        $domain=$this->select($info['dict']['domain'],'domain',$arr['domain']);
        $this->assign("domain",$domain);

        $way=$this->select($info['dict']['way'],'way',$arr['way']);
        $this->assign("way",$way);

        $authority=$this->select($info['dict']['authority'],'authority',$arr['authority']);
        $this->assign("authority",$authority);

        $this->display();
    }

    public function release(){
        $info=$this->init();
        $data=M($info['name'][1])->find(I(id));

    }
    public function online(){
        $info=$this->init();
        $data=M($info['name'][1])->find(I(id));

    }

    public function details(){
//        dump($_SESSION);
        $info=$this->init();
        $id=I(id);
        $data=M($info['name'][1])->find($id);
        $this->assign('data',$data);

        $where=array('api'=>$id,'deleted'=>'0');
        $version=M($info['name'][2])->where($where)->order('atime desc')->select();
        $this->assign('version',$version);

        $parameter=M($info['name'][3])->where($where)->order('sn,id')->select();
        $this->assign('parameter',$parameter);

        $scene=M($info['name'][4])->where($where)->order('sn,id')->select();
        $this->assign('scene',$scene);


        //参数添加
        $parameter=M($info['name'][3])->where($where)->count()+1;
        $scene=M($info['name'][4])->where($where)->count()+1;
        $version=M($info['name'][2])->where($where)->count()+1;
        $c=array('parameter'=>$parameter,'scene'=>$scene,'version'=>$version);

        $this->assign('c',$c);
        //封装下拉列表
        $type=$this->select($info['dict']['type'],'type',1);
        $this->assign("type",$type);

        $required=$this->select($info['dict']['required'],'required',1);
        $this->assign("required",$required);

        //封装富文本编辑器
        $this->assign("parameterDesc",PublicController::editor("desc"));


        $this->display();
    }

    public function modparameter(){
        $info=$this->init();
        $arr=M($info['name'][3])->find(I('id'));
        $this->assign('arr',$arr);

        $this->display();
    }

    public function modscene(){
        $info=$this->init();
        $arr=M($info['name'][4])->find(I('id'));
        $this->assign('arr',$arr);

        $this->display();
    }

    public function modversion(){
        $info=$this->init();
        $arr=M($info['name'][2])->find(I('id'));
        $this->assign('arr',$arr);

        $this->display();
    }

}