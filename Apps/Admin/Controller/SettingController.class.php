<?php
namespace Admin\Controller;
class SettingController extends CommonController {
    public function otable(){       
        $data=M('tp_obctable')->where($where)->order('length')->select();
        $this->assign('data',$data);
        $this->display();
    }
}