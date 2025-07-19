//
//  ViewController.swift
//  segueClass
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var textfeild: UITextField!
    @IBOutlet weak var toggle: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(UnwindSegue: UIStoryboardSegue){
    }

//
    
    
    @IBAction func toggleYellow(_ sender: Any) {
        if toggle.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }else{
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    
   
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = textfeild.text
//    }
    
}

