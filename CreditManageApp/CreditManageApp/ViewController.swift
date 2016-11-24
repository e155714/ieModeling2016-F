//
//  ViewController.swift
//  CreditManageApp
//
//  Created by Shingo Tawada on 2016/11/24.
//  Copyright © 2016年 ieModeling2016-F. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(sender: AnyObject) {
        let text: String = textfield.text!
        label.text = text
    }


}

