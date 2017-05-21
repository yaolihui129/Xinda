<?php
namespace Xinda\Controller;
class DingdController extends WebInfoController {
    //免登陆相关
    function getToken(){ //获取access_token
        $corpid      = C(DD_CorpID);
        $corpsecret  = C(DD_CorpSecret);
        $url         = 'https://oapi.dingtalk.com/gettoken?corpid='.$corpid.'&corpsecret='.$corpsecret;
        $arr         = json_decode(httpGet($url), true);
        return $arr['access_token'];
    }
    
    function getSsoToken(){//获取SsoToken
        $corpid      = C(DD_CorpID);
        $corpsecret  = C(DD_SSOsecret);
        $url         = 'https://oapi.dingtalk.com/sso/gettoken?corpid='.$corpid.'&corpsecret='.$corpsecret;
        $arr         = json_decode(httpGet($url), true);
        return $arr['access_token'];     
    }
    
    function getChannelToken(){//获取ChannelToken
        $corpid      = C(DD_CorpID);
        $corpsecret  = C(DD_ChannelSecret);
        $url         = 'https://oapi.dingtalk.com/channel/get_channel_token?corpid='.$corpid.'&channel_secret='.$corpsecret;
        $arr         = json_decode(httpGet($url), true);
        return $arr['access_token'];        
    }  
    
    function getCode(){//获取Code
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/sns/get_persistent_code?access_token='.$token;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    
    //部门相关    
    function getDepartmentList(){//获取部门列表
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/department/list?access_token='.$token;
        $arr     =  json_decode(httpGet($url), true);
//         dump($arr['department']);
        return $arr;
    }
    
    function getDepartment($id='29417014'){//获取部门详情
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/department/get?access_token='.$token.'&id='.$id;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    function creatDepartment(){//创建部门
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/department/create?access_token='.$token;
        $Meg      = array(
                        "name"              =>  "钉钉事业部",        //部门名称。长度限制为1~64个字符
                        "parentid"          =>  "1",                //父部门id。根部门id为1
                        "order"             =>  "1",                //在父部门中的次序值。order值小的排序靠前
                        "createDeptGroup"   =>  true,               //是否创建一个关联此部门的企业群
                        "deptHiding"        =>  true,               //是否隐藏部门, true表示隐藏, false表示显示
                        "deptPerimits"      =>  "3|4",              //可以查看指定隐藏部门的其他部门列表，如果部门隐藏，则此值生效，取值为其他的部门id组成的的字符串，使用 | 符号进行分割
                        "userPerimits"      =>  "userid1|userid2",  //可以查看指定隐藏部门的其他人员列表，如果部门隐藏，则此值生效，取值为其他的人员userid组成的的字符串，使用| 符号进行分割
                        "outerDept"         =>  true,               //是否本部门的员工仅可见员工自己, 为true时，本部门员工默认只能看到员工自己
                        "outerPermitDepts"  =>  "1|2",              //本部门的员工仅可见员工自己为true时，可以配置额外可见部门，值为部门id组成的的字符串，使用|符号进行分割
                        "outerPermitUsers"  =>  "userid3|userid4",  //本部门的员工仅可见员工自己为true时，可以配置额外可见人员，值为userid组成的的字符串，使用|符号进行分割        
                    );   //2.组装数组
        $postJson = json_encode($Meg);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    function updateDepartment(){//编辑部门
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/department/update?access_token='.$token;
        $Meg      = array(
            "name"                  =>  "钉钉事业部",        //部门名称。长度限制为1~64个字符
            "parentid"              =>  "1",                //父部门id。根部门id为1
            "order"                 =>  "1",                //在父部门中的次序值。order值小的排序靠前
            "id"                    =>  "1",                //部门id
            "createDeptGroup"       =>  true,               //是否创建一个关联此部门的企业群
            "autoAddUser"           =>  true,               //如果有新人加入部门是否会自动加入部门群
            "deptManagerUseridList" =>  "manager1111|2222", //部门的主管列表,取值为由主管的userid组成的字符串，不同的userid使用’| 符号进行分割
            "deptHiding"            =>  true,               //是否隐藏部门, true表示隐藏, false表示显示
            "deptPerimits"          =>  "3|4",              //可以查看指定隐藏部门的其他部门列表，如果部门隐藏，则此值生效，取值为其他的部门id组成的的字符串，使用 | 符号进行分割
            "userPerimits"          =>  "userid1|userid2",  //可以查看指定隐藏部门的其他人员列表，如果部门隐藏，则此值生效，取值为其他的人员userid组成的的字符串，使用| 符号进行分割
            "outerDept"             =>  true,               //是否本部门的员工仅可见员工自己, 为true时，本部门员工默认只能看到员工自己
            "outerPermitDepts"      =>  "1|2",              //本部门的员工仅可见员工自己为true时，可以配置额外可见部门，值为部门id组成的的字符串，使用|符号进行分割
            "outerPermitUsers"      =>  "userid3|userid4",  //本部门的员工仅可见员工自己为true时，可以配置额外可见人员，值为userid组成的的字符串，使用|符号进行分割
            "orgDeptOwner"          =>  "manager1111",      //企业群群主
        );   //2.组装数组
        $postJson = json_encode($Meg);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    function delDepartment($id){//删除部门
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/department/delete?access_token='.$token.'&id='.$id;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    
    function getUserId($unionid){//获取getUserid
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/getUseridByUnionid?access_token='.$token.'&unionid='.$unionid;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    function getUser($userid='manager1881'){//获取成员详情
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/get?access_token='.$token.'&userid='.$userid;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    function creatUser(){//创建用户
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/user/create?access_token='.$token;
        $Meg      = array(
                    );   //2.组装数组
        $postJson = json_encode($Meg);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    function updateUser(){//更新用户
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/user/update?access_token='.$token;
        $Meg      = array(
        );   //2.组装数组
        $postJson = json_encode($Meg);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    function delUser($userid){//删除用户
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/delete?access_token='.$token.'&userid='.$userid;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    function delAllUser(){//批量删除用户
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/user/batchdelete?access_token='.$token;
        $Meg      = array(
        );   //2.组装数组
        $postJson = json_encode($Meg);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    function getSimpleList($department_id=29417014){//获取部门用户列表
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/simplelist?access_token='.$token.'&department_id='.$department_id;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    function getUserList($department_id){//获取用户列表
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/list?access_token='.$token.'&department_id='.$department_id;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    function getAdmin(){//获取管理员列表
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/get_admin?access_token='.$token;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr['adminList']);
    }
    
    function getUserCount($onlyActive){//获取企业员工人数,0:非激活人员数量，1:已经激活人员数量
        $token   =  $this->getToken();
        $url     =  'https://oapi.dingtalk.com/user/get_org_user_count?access_token=ACCESS_TOKEN&onlyActive=0'.$token.'&onlyActive='.$onlyActive;
        $arr     =  json_decode(httpGet($url), true);
        dump($arr);
    }
    
    
    //服务窗相关
    
    
    //发送消息
    function sendMessage(){//发送普通会话消息
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/message/send_to_conversation?access_token='.$token;
        $Meg      = array("content"=>"张珊的请假申请");
        $Meg      = json_encode($Meg);
        $Arr      = array(
                       "sender"=>"UserID1",
                       "cid"=>"PartyID1",
                       "msgtype"=>"text",
                       "text"=>$Meg,            
                    );   //2.组装数组
        $postJson = json_encode($Arr);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    function sendRobotMeg(){//发送机器人消息
        $Meg='111';
        $token    =  $this->getToken();
        $url      = 'https://oapi.dingtalk.com/robot/send?access_token=6203882eef6a7057fd8c68dfdf97e484df252f6c55a9532380337ce0ca989cce';
        $Meg      = array("content"=>"张珊的请假申请");
        $Meg      = json_encode($Meg);
        $Arr      = array(
                        "sender"    =>  "UserID1",
                        "isAtAll"   =>  "PartyID1",
                        "msgtype"   =>  "text",
                        "text"      =>  $Meg,
                    );   //2.组装数组
        $postJson = json_encode($Arr);      //将数组转化成json
        $res      = httpPost($url, $postJson);
        return $res;
    }
    
    public function bumen(){
        getWebInfo(C('PRODUCT'));//获取网页信息       
        $data=$this->getDepartmentList(); //获取部门信息
        $this->assign('data',$data['department']);
dump($data);
        $this->display();
    }

}

