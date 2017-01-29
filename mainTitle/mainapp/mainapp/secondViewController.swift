//
//  secondViewController.swift
//  mainapp
//
//  Created by Shinjouumi on 2017/01/29.
//  Copyright © 2017年 Shinjouumi. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var tasizan1: UITextField!
    @IBOutlet weak var tasizan2: UITextField!
    @IBOutlet weak var tasizan3: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func resultButton(sender: AnyObject) {
        let x1 = Int(tasizan1.text!)
        let x2 = Int(tasizan2.text!)
        let x3 = Int(tasizan3.text!)
        
        let y = x1! + x2! + x3!
        
        result.text = y.description
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
