//
//  ViewController.swift
//  AlaformTest
//
//  Created by 崔林豪 on 2018/8/29.
//  Copyright © 2018年 崔林豪. All rights reserved.
//

import UIKit

import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //getRequest()
        
        //postRequest()
        
        httpTool()
        
    }
    
    //MARK:- 请求封装
    private func httpTool() {
        
        NetWorkTools.requestData(type: .GET, URLString: "http://httpbin.org/get", parameters: ["name" : "why"]) { (response) in
            
            /*
            if let rr = response as? DataResponse<Any> {
                
                guard let dd = rr.result.value else {
                    print(rr.result.error ?? "error")
                    return
                }
                print("---////----\(dd)")
                
            }
            
            else
            {
               print("---last----\(response)")
            }
             
            */
             print("---last----\(response)")
            
        }
        
    }

    //MARK:- get 请求
   private func getRequest () {
    
    Alamofire.request("http://httpbin.org/get", method: .get, parameters: ["name" : "why"]).responseJSON { (response) in
        
        guard let result = response.result.value else {
            print("-------------\(String(describing: response.result.error))")
            return
        }
        
        print("===>get>>>>>\(result)")
    }
    
        
    }
    
    //MARK:- post请求
    private func postRequest () {
        
        
        
        Alamofire.request("http://httpbin.org/post", method: .post, parameters: ["name" : "why"]).responseJSON { (response) in
            
            guard let result = response.result.value else {
                print("-------------\(String(describing: response.result.error))")
                return
            }
            
            
            print("===>post>>>>>\(result)")
        }
        
        
    }


}









