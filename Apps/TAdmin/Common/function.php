<?php
    //项目选择
    function proselect($value=1,$name=code) {
        $html = '<select name="'.$name.'" class="form-control">';
            $where=array("testgp"=>$_SESSION['testgp']);
            $cats = M('project')->where($where)->order("end desc")->select();
            foreach($cats as $v) {
                $selected = ($v['id']==$value) ? "selected" : "";
                $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['code'].'</option>';
            }
        $html .='<select>';
        return $html;
    }
    
    function getSysid($Pathid){
        $data=M('module')->find($Pathid);
        return $data['branch'];
    }
    
     //根据stagetesterid获取列队信息
    function getSTester($stagetesterid){
        if ($stagetesterid){
            $data=M('tp_stagetester')->find($stagetesterid);
            $str=$data['stage']."【".$data['state']."】";
            return $str;
        }else {
            return ;
        }
    }
    
     //根据pathid获取功能列表
    function getFunces($pathid){
        $where['pathid']=$pathid;    
        $arr=M('tp_func')->where($where)->order("sn,id")->select();
        foreach ($arr as $ar){
            $str.='<li class="list-group-item"><b>'
                    . $ar['sn']."</b>.".$ar['func']."【".$ar['state']."】<span class='badge'>".getProNo($ar['fproid'])         
                    .'</span></li>';
        }
            if ($arr){
                return $str;
            }else {
                return '无功能点';
            }
    }
    
     //根据exesceneid获取执行场景功能信息
    function getESceneFunc($exesceneid){
        $where['exesceneid']=$exesceneid;
        $arr=M('tp_exefunc')->where($where)->order('sn,id')->select();
        foreach ($arr as $ar){
            $str.='<li class="list-group-item">'
                .$ar['sn'].".".$ar['func'].":".$ar['remarks']
                ."（".$ar['casemain']."，<b>预期：</b>".$ar['caseexpected']."）"
                .$ar['remark'].'<span class="label label-default">'.$ar['updatetime']
                .'</span><span class="badge">'.$ar['result'].'</span>'
                .'</li>';
        }
        return $str;
    }
   
