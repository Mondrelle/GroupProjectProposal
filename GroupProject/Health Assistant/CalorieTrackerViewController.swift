//
//  calorieTrackerViewController.swift
//  GroupProject
//
//  Created by Mondrelle Cheek on 4/20/26.
//

import UIKit

class CalorieTrackerViewController: UIViewController {
    
    @IBOutlet weak var userCals: UITextField!
    @IBOutlet weak var userProtein: UITextField!
    @IBOutlet weak var userSugars: UITextField!
    @IBOutlet weak var feedback: UITextView!
    
    
    
    
    @IBAction func feedbackTapped(_ sender: Any) {
        //Check if user even entered anything, and if the vaules work
        //So we check if the text fields are empty
        if userCals.text == "" || userProtein.text == "" || userSugars.text == "" {
            let alert = UIAlertController(
                title: "Missing Information",
                message: "Please enter calories, proteins, and sugars",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }//End of if{} - Did the user fill all fields
        
        //We take the values from the field and create new variables
        guard let calories = Int(userCals.text!),
              let protein = Int(userProtein.text!),
              let sugars = Int(userSugars.text!) else {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Please enter numbers only (no symbols or letters)",
                preferredStyle: .alert
            )//end of let aleert
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }//end of else
        
        //Criteria: At least 1800, but no more than 2200 calories. At least 50 protein. Less than 36 grams of sugar?
        //feedback
        var feedbackText = ""
        
        //Calories
        if calories < 1800 {
            feedbackText += "Your calories are low. You may need more food today "
        }else if calories <= 2200 {
            feedbackText += "Your calorie amount looks in a healthy average range "
        }else {
            feedbackText += "Your calories are high. "
        }//end of calorie
        
        //Proteins
        if protein < 50 {
            feedbackText += "Your protein is low. You may need more food today "
        } else {
            feedbackText += "You've it your protein goals for today "
        }//end of protein
        
        //Sugars
        if sugars > 36 {
            feedbackText += "You've gone over your sugar intake for today. Please consider limiting your intake of sugary foods "
        } else {
            feedbackText += "You've stayed within your sugar intake for today "
        }
        
        feedback.text = feedbackText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}
