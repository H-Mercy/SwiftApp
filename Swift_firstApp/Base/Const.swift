//
//  Const.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/9.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import Foundation
// 屏幕的宽
let SCREEN_WIDTH = UIScreen.main.bounds.size.width

// 屏幕的高
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

//nav的高度
let navHight = 44.0;


//判断iPad
let IPAD_DEV:Bool! = (UIDevice.current.userInterfaceIdiom == .pad) ? true : false
//判断iPhone4
let IS_IPHONE4 =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 640, height: 960).equalTo((UIScreen.main.currentMode?.size)!) : false)
//判断iPhone5/5c/5s
let IS_IPHONE5 =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 640, height: 1136).equalTo((UIScreen.main.currentMode?.size)!) : false)
//判断iPhone6/6s
let IS_IPHONE6 =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 750, height: 1334).equalTo((UIScreen.main.currentMode?.size)!) : false)
//判断iPhone6p
let IS_IPHONE6_PLUS =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1242, height: 2208).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE6_PLUS_SCALE =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1125, height: 2001).equalTo((UIScreen.main.currentMode?.size)!) : false)
//判断iPhone6p
let IS_IPHONE_X =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1125, height: 2436).equalTo((UIScreen.main.currentMode?.size)!) : false)




let autoSizeScaleX = Float(UIScreen.main.bounds.size.width) / 375.0;//计算屏幕比例大小，以6为模型

let  autoSizeScaleY = Float(UIScreen.main.bounds.size.height) / 568.0;


