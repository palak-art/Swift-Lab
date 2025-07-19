//
//  ViewController.swift
//  twoButton
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func getRandomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    @IBAction func setText(_ sender: Any) {
        label.text = textField.text
        label.textColor = getRandomColor()
    }
    
    @IBAction func clearText(_ sender: Any) {
        label.text = ""
        textField.text = ""
    }
    
    @IBOutlet weak var label: UILabel!
}

