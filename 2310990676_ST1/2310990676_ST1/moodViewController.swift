//
//  moodViewController.swift
//  2310990676_ST1
//
//  Created by Guest1 on 05/08/25.
//

import UIKit

class moodViewController: UIViewController {

    
    @IBOutlet weak var happy: UILabel!
    @IBOutlet weak var sad: UILabel!
    @IBOutlet weak var stress: UILabel!
    @IBOutlet weak var energy: UILabel!
    
    @IBOutlet weak var firstB: UIButton!
    @IBOutlet weak var secondB: UIButton!
    @IBOutlet weak var thirdB: UIButton!
    @IBOutlet weak var fourthB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    updateUI()
    }
    func updateUI(){
        
        let buttonFont = UIFont.systemFont(ofSize: 70)

        firstB.setAttributedTitle(
            NSAttributedString(string: meals[0].mood.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        secondB.setAttributedTitle(
            NSAttributedString(string: meals[1].mood.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        thirdB.setAttributedTitle(
            NSAttributedString(string: meals[2].mood.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        fourthB.setAttributedTitle(
            NSAttributedString(string: meals[3].mood.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )

        
        happy.text = meals[0].mood.name
        sad.text = meals[1].mood.name
        stress.text = meals[2].mood.name
        energy.text = meals[3].mood.name
    }
   
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        performSegue(withIdentifier:"MoodSegue", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        guard let activityVC =  segue.destination as? activityViewController else{
            return
        }
        guard let selectedButton = sender as? UIButton else{
            return
        }
        switch selectedButton{
        case firstB:
            activityVC.selectedMood = meals[0].mood
        case secondB:
            activityVC.selectedMood = meals[1].mood
        case thirdB:
            activityVC.selectedMood = meals[2].mood
        case fourthB:
            activityVC.selectedMood = meals[3].mood
        default:
            break
        
        }
    }
}
