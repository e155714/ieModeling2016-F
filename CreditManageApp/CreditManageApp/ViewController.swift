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
    @IBOutlet weak var printarray: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textarea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(sender: AnyObject) {
        let text: String = textfield.text!
        label.text = text
    }
    
    
    // csvファイルを読み込むメソッド
    // csvを多重配列に落とし込む
    @IBAction func readcsv(sender: AnyObject) {
        // 2次元配列
        var result: [[String]] = []
        // csvを読み込むためのPath
        if let csvPath = NSBundle.mainBundle().pathForResource("test", ofType: "csv") {
            //csv一行分の文字列(\t含む)
            var csvString=""
            do{
                csvString = try NSString(contentsOfFile: csvPath, encoding: NSUTF8StringEncoding) as String
                textarea.text=textarea.text!+csvString
            } catch let error as NSError {
                print(error.localizedDescription)
            }
            // ,によってさらに配列に分化できる
            csvString.enumerateLines { (line, stop) -> () in
                result.append(line.componentsSeparatedByString(","))
                
            }
            print(result)
        
            for var i=0; i<result.count; i++ {
                printarray.text = csvString
                for var j=0; j<result[i].count; j++ {
                    print(result[i][j])
                    printarray.text = result[i][j]
                }
            }
        }
    }
}

