//  MoodTrackerViewController.swift
//  GroupProjectProposal
//  Created by Mondrelle Cheek on 4/16/26.
import UIKit

//Class
class MoodTrackerViewController: UIViewController {
    
    //Variables
    var mood: String?//"how are you feeling today"
    var moodSubject: String? //"what contributed to your mood todya?"
    var energy: Int? //using a slider 1-10
    
    //taps (moods)
    @IBAction func happyTapped(_ sender: Any) {
        mood = "Happy"
        moodLabel.text = "I am happy"
    }
    @IBAction func okayTapped(_ sender: Any) {
        mood = "Okay"
        moodLabel.text = "I am okay"
    }
    @IBAction func sadTapped(_ sender: Any) {
        mood = "Sad"
        moodLabel.text = "Im sad"
    }
    @IBAction func madTapped(_ sender: Any) {
        mood = "Mad"
        moodLabel.text = "Im mad"
    }
    @IBAction func disTapped(_ sender: Any) {
        mood = "Dissapointed"
        moodLabel.text = "Im dissapointed"
    }
    @IBAction func boredTapped(_ sender: Any) {
        mood = "Bored"
        moodLabel.text = "Im bored"
    }
    @IBAction func fatTapped(_ sender: Any) {
        mood = "Fatigued"
        moodLabel.text = "Im fatigued"
    }
    @IBAction func tiredTapped(_ sender: Any) {
        mood = "Tired"
        moodLabel.text = "Im tired"
    }
    //moodLabel that gets changed when emoji is tapped
    @IBOutlet weak var moodLabel: UILabel!
    
    
    
    
    @IBAction func moodLogTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToMoodlog", sender: self)
    }
    
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}//End of the MoodTracker ViewController
