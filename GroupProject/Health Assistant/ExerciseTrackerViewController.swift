//  calorieTrackerViewController.swift
//  GroupProject
//
//  Created by Mondrelle Cheek on 4/20/26.
//

import UIKit

class ExerciseTrackerViewController: UIViewController {

    
    @IBOutlet weak var userSteps: UITextField!
    @IBOutlet weak var workoutDuration: UITextField!
    
    
    @IBAction func feedbackTapped(_ sender: Any) {
        //check if they filled in fields
        //10,000 steps goal, 1,000 steps is 10 minutes
        //At least 30 minute workout, and this is how close you are
    }
    
    
    @IBOutlet weak var feedback: UITextView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
