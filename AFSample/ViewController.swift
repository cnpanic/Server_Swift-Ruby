//
//  ViewController.swift
//  AFSample
//
//  Created by Jung Ho Chu on 2018. 2. 1..
//  Copyright © 2018년 Jung Ho Chu. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//       Alamofire.request(.GET, "https://codewithchris.com/code/afsample.json").responseJSON { response in --> 구문법
        Alamofire.request("https://new1208.herokuapp.com/macbook_1.json").responseJSON { response in
//        Alamofire.request("https://new1208.herokuapp.com/book_content/1").responseJSON { response in
      
        if let JSON = response.result.value {
            let json = JSON as! [String: Any]
            
            print(json["productModel"])
            print(json["year"])
            print(json["quarter"])
            print(json["specification"])
            
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

