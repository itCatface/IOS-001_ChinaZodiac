//
//  ViewController.swift
//  ChinaZodiac
//
//  Created by Fashion on 16/7/6.
//  Copyright © 2016年 catface. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    // 通过视图绑定的控件
    @IBOutlet weak var yearNum: UITextField!
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 点击空白处关闭键盘
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearNum.resignFirstResponder()
    }

    // 通过视图绑定的事件
    @IBAction func btnOk(sender: AnyObject) {
        
        yearNum.resignFirstResponder() // 关闭键盘
        
        if let year = Int(yearNum.text!) {
            
            let imgNum = year % 12
            
            img.image = UIImage(named: String(imgNum)) // 输入的数字模12得到对应图片
            
            print(year)
            
        } else {
            print("invalide")
        }
        
    }

}

