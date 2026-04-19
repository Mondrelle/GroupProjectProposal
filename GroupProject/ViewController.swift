//  ViewController.swift
//  GroupProject
//  Created by Mondrelle Cheek on 4/19/26.
import UIKit

//Class ViewController
class ViewController: UIViewController {

    //taps
    @IBAction func moodTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToMoodTracker", sender: self)
    }
    @IBAction func journalTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToJournal", sender: self)
    }
    
    @IBAction func healthTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToHealthAdvisor", sender: self)
    }
    
    @IBAction func profileTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToProfile", sender: self)
    }
    //m
    
    //Override
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}//end of ViewController Class

