//
//  NetWorkTools.swift
//  AlaformTest
//
//  Created by 崔林豪 on 2018/8/29.
//  Copyright © 2018年 崔林豪. All rights reserved.
//

import UIKit

import Alamofire

enum MethodType {
    
    case GET
    case POST
}

class NetWorkTools: NSObject {
    
    //封装成一个类方法
    
    class func requestData(type : MethodType, URLString : String, parameters : [String : NSString]? = nil, finishedCallback : @escaping (_ result : AnyObject) -> ()) {
        
        //获取类型
        
        let method = type == .GET ? HTTPMethod.get : HTTPMethod.post
        
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error ?? "error")
                return
            }
            
            finishedCallback(result as AnyObject)
            
        }
        
    }
    
    
    
    
    
    
    
    
}
