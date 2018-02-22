<?php
namespace Report\Controller;
class IndexController extends WebInfoController {
    public function index(){
        $where=array('testgp'=>'YX','deleted'=>'0');
        $data=M('project')->where($where)            
            ->field("id,name,code,begin,end,status,pri,acl,deleted,desc,PO,PM,QD,RD,order,deleted")
            ->order("end desc")->limit(20)->select();        
        $this->assign('data',$data);

        $this->theme('')->display();
    }

    public function link(){
        //测试环境链接
        $alix=array('name'=>'Alix测试环境','url'=>'http://192.168.145.117:8080/alix/','user'=>'admin','password'=>'1','hosts'=>'否');
        $cfqcb=array('name'=>'OP车服-全车宝','url'=>'http://edit.cfw.taoche.com/order/index','user'=>'无','password'=>'','hosts'=>'是');
        $cfjr=array('name'=>'OP车服-金融','url'=>'http://cfw.taoche.com/edit/orderFinance/index','user'=>'无','password'=>'','hosts'=>'是');
        $data=array($alix,$cfqcb,$cfjr);
        $this->assign('data',$data);

        $hosts='# wiki<br>
                192.168.155.55 wiki.chexian.com<br>
                #源代码管理<br>
                192.168.155.65 gitlab.dev.daikuan.com<br><br>
                192.168.155.48 jenkins.chexian.com<br>
                0.0.0.0 account.jetbrains.com<br>
                #安鑫保测试环境<br>
                192.168.155.35 axb.chexian.com<br>
                192.168.155.35 test.axb.chexian.com<br>
                192.168.155.35 test.edit.axb.chexian.com<br>
                192.168.155.35 test.b.chexian.com<br>
                192.168.155.30 open.chexian.com<br>
                # 车服测试环境<br>
                192.168.155.30 test.cfw.chexian.com<br>
                192.168.155.30 cfw.taoche.com<br>
                192.168.155.30 edit.cfw.taoche.com<br>
                
                #OP后台测试环境<br>
                192.168.155.55  top.chexian.com <br>
                192.168.155.30 tadmin.pay.chexian.com<br>
                #车险JOB测试环境<br>
                192.168.155.35 cxjob.chexian.com<br>
                ';
        $this->assign('hosts',$hosts);
        $this->theme('')->display();
    }

    public function release(){
        //预发环境链接
        $alix=array('name'=>'Alix测试环境','url'=>'http://alix.uat.yixincapital.com/login/index.jsp','user'=>'admin','password'=>'1','hosts'=>'否');
        $cfqcb=array('name'=>'OP车服-全车宝','url'=>'http://edit.cfw.taoche.com/order/index','user'=>'无','password'=>'','hosts'=>'是');
        $cfjr=array('name'=>'OP车服-金融','url'=>'http://cfw.taoche.com/edit/orderFinance/index','user'=>'无','password'=>'','hosts'=>'是');
        $data=array($alix,$cfqcb,$cfjr);
        $this->assign('data',$data);

        $hosts='# wiki<br>
                192.168.155.55 wiki.chexian.com<br>
                #源代码管理<br>
                192.168.155.65 gitlab.dev.daikuan.com<br><br>
                192.168.155.48 jenkins.chexian.com<br>
                0.0.0.0 account.jetbrains.com<br>
                #预发布环境72<br>
                59.151.93.72 axb.chexian.com<br>
                59.151.93.72 edit.axb.chexian.com<br>
                59.151.93.72 open.chexian.com<br>
                #预发布环境72<br>
                59.151.93.72 cfw.taoche.com<br>
                #测试OP后台<br>
                192.168.155.30 edit.cfw.taoche.com';
        $this->assign('hosts',$hosts);
        $this->theme('')->display();
    }

    public function online(){
        //线上环境链接
        $alix=array('name'=>'Alix测试环境','url'=>'','user'=>'','password'=>'','hosts'=>'否');
        $cfqcb=array('name'=>'OP车服-全车宝','url'=>'http://edit.cfw.taoche.com/order/index','user'=>'无','password'=>'','hosts'=>'否');
        $cfjr=array('name'=>'OP车服-金融','url'=>'http://cfw.taoche.com/edit/orderFinance/index','user'=>'无','password'=>'','hosts'=>'否');
        $data=array($alix,$cfqcb,$cfjr);
        $this->assign('data',$data);

        $hosts='# wiki<br>
                192.168.155.55 wiki.chexian.com<br>
                #源代码管理<br>
                192.168.155.65 gitlab.dev.daikuan.com<br><br>
                192.168.155.48 jenkins.chexian.com<br>
                0.0.0.0 account.jetbrains.com<br>';

        $this->assign('hosts',$hosts);

        $this->theme('')->display();
    }

}