//
//  FlickrOAuth1.swift
//  iOSASKitSample
//
//  Created by GaoLianjing on 1/4/16.
//  Copyright © 2016 GaoLianjing. All rights reserved.
//

import Foundation
import Alamofire



class FlickrOAuth1 {

    
    static var getRequestTokenParameters = [
        "oauth_nonce": "",
        "oauth_timestamp": "",
        "oauth_consumer_key": "",
        "oauth_signature_method": "HMAC-SHA1",
        "oauth_version": "1.0"
        //"oauth_callback": "",
    ]
    
    
    static func login() {
        
        let time = Int(NSDate().timeIntervalSince1970)
        getRequestTokenParameters["oauth_timestamp"] = "\(time)"
        getRequestTokenParameters["oauth_nonce"] = "\(time.hashValue)"
        getRequestTokenParameters["oauth_consumer_key"] = flickrConst.key
        
        
        Alamofire.request(.GET, flickrConst.tokenUrl, parameters:getRequestTokenParameters)
            .responseJSON { response in
                print("request: \n")
                print(response.request)  // original URL request
                print("response: \n")
                print(response.response) // URL response
                print("data: \n")
                print(response.data)     // server data
                print("serialization: \n")
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    
    }
    
    
    
}
