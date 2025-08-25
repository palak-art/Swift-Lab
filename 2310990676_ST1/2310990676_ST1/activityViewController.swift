//
//  activityViewController.swift
//  2310990676_ST1
//
//  Created by Guest1 on 05/08/25.
//

import UIKit

class activityViewController: UIViewController {
    
    
    
    @IBOutlet weak var chair: UILabel!
    @IBOutlet weak var light: UILabel!
    @IBOutlet weak var moderate: UILabel!
    @IBOutlet weak var intense: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    
    
    var selectedMood : Mood?
    var selectedActivity : Activity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI(){
        //
        
        let buttonFont = UIFont.systemFont(ofSize: 70)
        
        b1.setAttributedTitle(
            NSAttributedString(string: meals[0].activity.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        b2.setAttributedTitle(
            NSAttributedString(string: meals[4].activity.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        b3.setAttributedTitle(
            NSAttributedString(string: meals[8].activity.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        b4.setAttributedTitle(
            NSAttributedString(string: meals[12].activity.emoji,
                               attributes: [.font: buttonFont]),
            for: .normal
        )
        
        
        chair.text = meals[0].activity.name
        light.text = meals[4].activity.name
        moderate.text = meals[8].activity.name
        intense.text = meals[12].activity.name
    }
    
    
    @IBAction func activityButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toMealScreen", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mealVC = segue.destination as? suggestionViewController else {
            return
        }
        
        guard let selectedButton = sender as? UIButton else {
            return
        }
        
        switch selectedButton {
        case b1:
            selectedActivity = meals[0].activity
        case b2:
            selectedActivity = meals[4].activity
        case b3:
            selectedActivity = meals[8].activity
        case b4:
            selectedActivity = meals[12].activity
        default:
            break
        }
        
        
        mealVC.mood = selectedMood
        mealVC.activity = selectedActivity
        
        // Find matching meal
        if let mood = selectedMood, let activity = selectedActivity {
            let matchedMeal = meals.first { meal in
                meal.mood.name == mood.name && meal.activity.name == activity.name
            }
            mealVC.suggestedMeal = matchedMeal?.suggestedMeal
            
        }
        
        
    }
}
