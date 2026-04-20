//
//  HealthAssistantViewController.swift
//  GroupProjectProposal
//
//  Created by Mondrelle Cheek on 4/16/26.
//

import UIKit

class HealthAssistantViewController: UIViewController {

    
    @IBAction func guideTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToGuide", sender: self)
    }
    @IBAction func calorieTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToCalorie", sender: self)
    }
    @IBAction func exerciseTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToExercise", sender: self)
    }
    @IBAction func wellnessTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToWellness", sender: self)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
