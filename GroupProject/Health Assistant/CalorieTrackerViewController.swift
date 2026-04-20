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
    
    
    
    
    @IBAction func feedbackTapped(_ sender: Any) {
        //check if users even entered anything, and if the vaules work
        //men need 2000, women 1800, at least 50, under 36 grams of sugar?
        //you need to eat more/less cals/protein, youve went over sugars
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
