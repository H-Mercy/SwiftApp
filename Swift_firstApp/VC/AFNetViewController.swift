//
//  AFNetViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/5/15.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

//枚举定义请求方式
enum HTTPRequestType {
    case GET
    case POST
}
class AFNetViewController: AFHTTPSessionManager {

    static let shareInstance:AFNetViewController = {//创建单例文件
        let baseUrl = NSURL(string: "xxxxxx")!
        let manager = AFNetViewController.init(baseURL: baseUrl as URL, sessionConfiguration: URLSessionConfiguration.default)
      
        manager.responseSerializer = AFHTTPResponseSerializer();
        return manager
        
    }();
    

    
    /// get，post请求
    ///
    /// - Parameters:
    ///   - requestType: 请求方式
    ///   - Datatype: 返回的数据类型，json和list
    ///   - urlString: 请求URL
    ///   - parameters: 字典参数
    ///   - completion: 回调
    func request(requestType:HTTPRequestType,Datatype:Int,urlString:String,parameters: [String: AnyObject]?, completion: @escaping (AnyObject?) -> ()) {
       
        //成功回调
        let success = { (task: URLSessionDataTask, json: Any)->() in
            
            if Datatype == 1 {//json
                completion(json as AnyObject?);
            }else{
                completion(NSArray() as AnyObject?);
            }
        }
        
        //失败回调
        let failure = { (task: URLSessionDataTask?, error: Error) -> () in
            print("网络请求错误 \(error)")
            completion(nil)
        }
        
        if requestType == .GET {
            get(urlString, parameters: parameters, success: success, failure: failure);
        } else {
            post(urlString, parameters: parameters, constructingBodyWith: nil, success: success, failure: failure);
        }
        
        
    }
   //调用举例
//    NetworkManager.shareInstance.request(requestType: .GET, urlString: "https:www.baidu.com", parameters: ["userName": "zhangsan" as AnyObject]) { (json) in
//    print(json)
//    }
    
    
    
}
