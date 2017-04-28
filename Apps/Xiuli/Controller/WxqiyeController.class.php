<?php
namespace Xiuli\Controller;
class WeixinController extends WebInfoController {
    
    public function valid(){
        
        $sVerifyMsgSig = $_GET["msg_signature"];
        $sVerifyTimeStamp = $_GET["timestamp"];
        $sVerifyNonce = $_GET["nonce"];
        $token="weixin123";
        $encodingAesKey="";
        $corpId="";        
        $sVerifyEchoStr = $_GET["echostr"];
        $errCode = $wxcpt->VerifyURL($sVerifyMsgSig, $sVerifyTimeStamp, $sVerifyNonce, $sVerifyEchoStr, $sEchoStr);
        if ($errCode == 0) {
            // 验证URL成功，将sEchoStr返回
            echo $sEchoStr;
        } else {
            print("ERR: " . $errCode . "\n\n");
        }
    }
    
    
    
    
    
    
}