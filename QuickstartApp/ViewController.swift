//
//  ViewController.swift
//  QuickstartApp
//
//  Created by Ela Malani on 3/15/17.
//  Copyright © 2017 Microsoft. All rights reserved.
//

import UIKit
import MobileCenterCrashes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Add Crash Me button 
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = UIColor.gray
        button.setTitle("Crash Me", for: .normal)
        button.addTarget(self, action: #selector(crashAction), for: .touchUpInside)
     
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func crashAction(sender: UIButton!) {
        MSCrashes.generateTestCrash()
    }
}

