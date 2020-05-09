//
//  CommunalFile.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/10.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import Foundation
//经常用的工具方法

//1---------------------------------关于设备信息--------------------------------------


//获取应用程序信息
//应用名称
func appName() -> String {
    return Bundle.main.infoDictionary!["CFBundleDisplayName"] as! String;
}
// 获取app版本号
func appVersion() -> String {
    return Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
}

//设备信息
// 获取iPhone名称
func iphoneName() -> String {
    return UIDevice.current.name
}

// 当前系统版本号
func systemVersion() -> String {
    return UIDevice.current.systemVersion
}


// 当前设备名称
func systemName() -> String {
    return UIDevice.current.systemName
}

// 当前设备型号
func systemModel() -> String {
    return UIDevice.current.model
}
// 通用唯一识别码UUID
func UUID() -> String {
    return (UIDevice.current.identifierForVendor?.uuidString)!
}

//2.---------------------------------------其他------------------------------------------

//根据屏幕适配字体
func GetFontSizeByScreenWithPrt(FontSize:CGFloat)->(CGFloat) {
    
    var tmpFontSize:CGFloat = FontSize;
    
    let  DisSize:CGFloat = 1;//每一阶梯次增加多少
    
    let  ScreenWidth:CGFloat = SCREEN_WIDTH;
    if(ScreenWidth>=320){//6系列
        tmpFontSize=tmpFontSize-DisSize;
    }
    if(ScreenWidth>=375){//6系列
        tmpFontSize=tmpFontSize-0;
    }
    
    if(ScreenWidth>=414){//6Plus系列
        tmpFontSize=tmpFontSize+DisSize;
    }
    return tmpFontSize;
    
}



//更换控制器方法调用
func changeControl(type:Int)  {
    let transtition = CATransition()
    transtition.duration = 0.5
    transtition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
    UIApplication.shared.keyWindow?.layer.add(transtition, forKey: "animation")
    //更换控制器进入到主页
    switch type {
    case 1:
        UIApplication.shared.keyWindow?.rootViewController = TabBarViewController();
    default: break;
        
    }
    
    
    
}


class UncaughtExceptionHandlerHelper: NSObject {
    class func UncaughtExceptionHandler(exception:NSException){
        let name = exception.name
        // 崩溃的原因  可以有崩溃的原因(数组越界,字典nil,调用未知方法...) 崩溃的控制器以及方法
        let reason = exception.reason
        //详情
        let arr = exception.callStackSymbols as NSArray
        //当前app版本
        let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String
        //当前设备
        let deviceModel = UIDevice.current.model
        //系统版本
        let sysVersion = UIDevice.current.systemVersion
        //崩溃报告的格式，可以自己重新写
        let crashText = "App Version:\(currentVersion!)\nVersion:\(sysVersion)\nVerdor:\(deviceModel)\nname:\(name)\nreason:\n\(reason)\ncallStackSymbols:\n\(arr.componentsJoined(by: "\n"))"
        //保存路径
        
        
        
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! + "/Exception.txt"
        // 将txt文件写入沙盒
        do{
            try crashText.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
        }catch{
            print(error)
        }
    }
    
    class func setDefaultHandler(){
        NSSetUncaughtExceptionHandler { (exception) in
            UncaughtExceptionHandlerHelper.UncaughtExceptionHandler(exception: exception)
        }
    }
    
    class func getHandler()->NSUncaughtExceptionHandler{
        return NSGetUncaughtExceptionHandler()!
    }
}
