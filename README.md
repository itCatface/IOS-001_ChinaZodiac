# 示例001、输入数字显示对应图片

- <a target="_blank" href="http://www.imooc.com/view/173">**课程地址(幕课网-使用 Swift 开发第一章)** </a>

- <a target="_blank" href="https://github.com/itCatface/IOS-001_ChinaZodiac">**代码地址(Github)** </a>

- **技术分析**

	![](https://github.com/itCatface/IOS-001_ChinaZodiac/blob/master/images/001-01.jpg?raw=true)
	
	1. **如图，在 Main.storyboard 中通过拖拽添加相关控件**
	
	2. **按住 Ctrl + 右键拖拽至 ViewController.swift 在代码中关联控件**
	
	3. **在代码中处理相关逻辑**

- **关键代码**

	- 通过视图绑定控件
	
			@IBOutlet weak var yearNum: UITextField!
			...
	    
		
	---
	---
	
	- 通过视图绑定事件
	  
			 @IBAction func btnOk(sender: AnyObject) {
			 	...
			 }
		
	---
	---
		
	- 关闭键盘
		
			yearNum.resignFirstResponder()	
		
	---
	---
	
	- 点击屏幕其他地方以关闭键盘
	  
			override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
			        yearNum.resignFirstResponder()
			    }
	    
	---
	---
	
	- 处理逻辑
	
			// 获取输入的数字
			if let year = Int(yearNum.text!) {
	            
		            let imgNum = year % 12
		            
		             // 输入的数字模 12 得到对应图片设置给图片控件
		            img.image = UIImage(named: String(imgNum))
		            
		            print(year)
		            
		        } else {
		            print("invalide")
		        }


