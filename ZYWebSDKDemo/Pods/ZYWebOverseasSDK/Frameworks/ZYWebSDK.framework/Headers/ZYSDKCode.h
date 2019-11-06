//
//  ZYResponseCode.h
//  RequestDemo
//
//  Created by zhangyu on 2019/5/29.
//  Copyright © 2019 Octopus. All rights reserved.
//

typedef NS_ENUM(NSUInteger, ZYResponseCode) {
    
    ZYRCodeUserExist = 101,//注册时:用户存在
    ZYRCodeAccountOrPasswordFail = 102,//登录时:输入的帐号或者密码有误
    ZYRCodeUserInputWrong = 103,//用户输入的格式有误
    ZYRCodeTokenNotExist = 104,//token不存在或者失效
    ZYRCodeUserNotExist = 105,//忘记密码:该用户名不存在
    ZYRCodeNotBindEmail = 106,//忘记密码:该用户没有绑定安全邮箱
    ZYRCodeDifferentPassword = 107,//（绑定邮箱和修改密码）验证密码，该密码和原密码不匹配
    ZYRCodeAlreadyBind = 108,//游客绑定账号，该用户已绑定账户
    ZYRCodeUserBindZoneFail = 109,//用户绑定区服信息失败
    ZYRCodeConnectNotCompelet = 110,//链接不完成，请重新生成
    ZYRCodeConnectExpired = 111,//链接已经过期，请重新申请
    ZYRCodeResetPasswordFail = 112,//重置密码失败，请重新申请
    ZYRCodePhoneAndEmailAlreadyBind = 113,//该手机号码和邮箱已经绑定
    ZYRCodeVerityCodeFail = 114,//验证码失败
    
    //pay code state
    ZYRCodeDuplicateOrder = 201,//重复游戏订单
    ZYRCodeTransactionExist = 202,//该交易信息已经存在
    ZYRCodeTransactionVerifyWrong = 203,//交易验证错误
    ZYRCodeCardUsedOrNotExist = 204,//卡已经被使用或不存在
    ZYRCodeCardPINNumberWrong = 205,//卡的PIN和序列号有误
    ZYRCodeOrderProcessing = 206,//订单正在处理当中
    ZYRCodeCardUnknownWrong = 207,//卡未知错误
    ZYRCodeQueryTransactionFail = 209,//查询订单流水的订单信息状态为失败
    ZYRCodeTransactionInformationNotExist = 210,//查询订单流水的订单信息状态不
    ZYRCodeTransactionInitState = 222,//订单初始化状态
    ZYRCodePlatformBalanceNotFull = 223,//平台币余额不足
    ZYRCodeEvidenceVerityTimeOut = 224,//IOS凭据校验超时
    
    //sever code state
    ZYRCodeServerException = 500,//服务器异常
    ZYRCodeMustPostMethod = 501,//提交必须是Post方式
    ZYRCodeCheckAPIKeyRight = 502,//请检查传入的api_key参数是否正确
    ZYRCodeMD5VerifyFail = 503//MD5验证失败
};

typedef NS_ENUM(NSUInteger, ZYWebSDKLoginType) {
    ZYWebSDKLoginTypeGoogle = 0,//Google登录
    ZYWebSDKLoginTypeFacebook//Facebook登录
};

