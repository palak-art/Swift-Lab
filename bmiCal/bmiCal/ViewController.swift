//
//  ViewController.swift
//  bmiCal
//
//  Created by Student on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height:
        UITextField!
    
    @IBOutlet weak var weight:
        UITextField!
    
    @IBOutlet weak var CalculateBMI:
        UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    
    
    @IBAction func CalculateBMI(_ sender: Any) {
        let heightString = height.text ?? ""
        let height = Double(heightString) ?? 0
        
        let weightString = weight.text ?? ""
        let weight = Double(weightString) ?? 0
        
        
        
        let bmi = weight / (height * height)
        
        CalculateBMI.text = "BMI is \(bmi)"
        
    }
    

}

