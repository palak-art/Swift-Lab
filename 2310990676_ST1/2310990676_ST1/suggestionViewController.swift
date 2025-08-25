//
//  suggestionViewController.swift
//  2310990676_ST1
//
//  Created by Guest1 on 05/08/25.
//

import UIKit

class suggestionViewController: UIViewController {

    var mood: Mood?
    var activity: Activity?
    var suggestedMeal : String?

    
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        text.text = "Feeling \(mood?.name ?? "") and \(activity?.name ?? "") eat \(suggestedMeal ?? "No Meal")"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
