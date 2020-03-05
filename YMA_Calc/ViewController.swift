//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aris👑 on 25/07/2019.
//  Copyright © 2019 Aris👑. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    @IBOutlet weak var ledisplay: UILabel!
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
    
    
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var preformingMath = false
    var operation = 0
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if preformingMath == true
        {
            label.text = String( sender.tag-1)
            numberOnScreen = Double(label.text!)!
            preformingMath = false
        }
        else {
            label.text = label.text! + String(sender.tag-1)
            
            numberOnScreen = Double(label.text!)!
            
        }
        
    }
    
    @IBAction func mybuttons(_ sender: UIButton) {
        
        if sender.tag == 17
        {
            label.text = " Albkali👑"
        }
        
            
            
        if sender.tag == 18
        {
            label.text = "😜Yasser🤪"
        }
            
            
        if sender.tag == 19
        {
            label.text = "😏 😛"
        }
        
            
            
        if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
        
        
    }
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 //Divide
            {
                label.text = "/"
            }
            
            else if sender.tag == 13 //Multiply
            {
                label.text = "*"
            }
            
            else if sender.tag == 14  //Manus
            {
                label.text = "-"
            }
            
            else if sender.tag == 15 //Plus
            {
                label.text = "+"
            }
            operation = sender.tag
            preformingMath = true
        }
        
        else if  sender.tag == 16
        {
            if operation == 12
            {
                label.text = String ( previousNumber / numberOnScreen )
            }
            
            else if  operation == 13
            {
                label.text = String ( previousNumber * numberOnScreen )
            }
            
            else if  operation == 14
            {
                label.text = String ( previousNumber - numberOnScreen )
            }
            
            else if  operation == 15
            {
                label.text = String ( previousNumber + numberOnScreen )
            }
        }
        
        else if sender.tag == 11
        {
                label.text = ""
                previousNumber = 0
                numberOnScreen = 0
                operation = 0
        }
        
        
    
        
        
}
        
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   

    }

    @IBAction func clicksum(_ sender: Any) {
    
        let n1:Double = Double( num1.text!)!
        let n2:Double = Double( num2.text!)!
        let sum1:Double = n1 + n2
        ledisplay.text = " Sum is = \(sum1)"
    
    }
   @IBAction func mywebsite(_ sender: Any) {
        
    if let url = NSURL(string: "http://www.albkali.com"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
    }
    
}

}
