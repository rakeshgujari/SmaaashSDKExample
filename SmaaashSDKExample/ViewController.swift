//
//  ViewController.swift
//  SmaaashSDKExample
//
//  Created by Rakesh Gujari on 21/09/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

import UIKit
import SmaaashSDK

class ViewController: UIViewController {

    var resultView: UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultView = UITextView(frame: CGRect(x: 50, y: 10, width: 200, height: 400))
        self.view.addSubview(resultView!)
        
        
        SmaaashSDK.default.setConfig(_apiKey: "")
        SmaaashSDK.default.start { (result) in
            DispatchQueue.main.async {
                self.resultView?.text = result
            }
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

