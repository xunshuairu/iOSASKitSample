//
//  ViewController.swift
//  iOSASKitSample
//
//  Created by GaoLianjing on 1/4/16.
//  Copyright © 2016 GaoLianjing. All rights reserved.
//

import UIKit
import AsyncDisplayKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FlickrOAuth1.login()
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

