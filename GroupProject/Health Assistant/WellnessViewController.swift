//
//  WellnessViewController.swift
//  GroupProject
//
//  Created by Mondrelle Cheek on 4/20/26.
//

import UIKit

class WellnessViewController: UIViewController {
    @IBOutlet weak var userSleep: UITextField!
    @IBOutlet weak var userWater: UITextField!
    @IBOutlet weak var userPhone: UITextField!
    @IBOutlet weak var userStress: UITextField!
    @IBOutlet weak var feedback: UITextView!
    @IBAction func feedbackTapped(_ sender: Any) {
        //Did user enter values?
        if userSleep.text == "" || userWater.text == "" || userPhone.text == "" || userStress.text == "" {
            let alert = UIAlertController(
            title: "Missing Information",
            message: "Please fill in all fields",
            preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true)
            return
        }
        //user needs to sleep more 8 hrs a day, needs more water 2.5L a day, and cant exceed four hours of phone time
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
