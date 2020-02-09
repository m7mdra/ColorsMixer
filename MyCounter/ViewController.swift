//
//  ViewController.swift
//  MyCounter
//
//  Created by mega on 2/7/20.
//  Copyright © 2020 mega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var red:Int = 0
    var blue:Int = 0
    var green:Int = 0
    var alpha:Int = 0
    
    @IBOutlet weak var rgbField: UITextField!
    @IBOutlet weak var rgbaField: UITextField!
    @IBOutlet weak var colorsView: UIView!
    @IBOutlet weak var hexField: UITextField!

    @IBOutlet weak var hslField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColor()
        
        
    }
    
    @IBAction func onRedChanged(_ sender: UISlider) {
        self.red=Int(sender.value)
        changeColor()

    }
    @IBAction func onGreenChanged(_ sender: UISlider) {
        self.green=Int(sender.value)
        changeColor()
    }
    @IBAction func onBlueChanged(_ sender: UISlider) {
        self.blue=Int(sender.value)
        changeColor()

    }
    @IBAction func onAlphaChanged(_ sender: UISlider) {
        self.alpha=Int(sender.value)
        changeColor()

    }
    fileprivate func rgbToHex() -> String {
        return String(format: "#%02x%02x%02x%02x", alpha,red,green,blue)
    }
    
    func changeColor(){
        print(red,green,blue,alpha)
        colorsView.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: CGFloat(alpha)/10)
        rgbaField.text = "RGBA(\(red),\(green),\(blue),\(alpha/10))"
        rgbField.text = "RGBA(\(red),\(green),\(blue))"
        hexField.text = rgbToHex()
    }
   
}

