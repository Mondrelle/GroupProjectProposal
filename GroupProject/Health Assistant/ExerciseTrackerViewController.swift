//  Created by Mondrelle Cheek on 4/20/26.
import UIKit
class ExerciseTrackerViewController: UIViewController {
    @IBOutlet weak var userSteps: UITextField!
    @IBOutlet weak var workoutDuration: UITextField!
    @IBAction func feedbackTapped(_ sender: Any) {
        //Check if they filled in all fields
        if userSteps.text == "" || workoutDuration.text == "" {
            let alert = UIAlertController(
                title: "Missing Information",
                message: "Please fill in all fields",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }
        
        //Check if they typed in numbers
        guard let steps = Int(userSteps.text ?? ""),
              let minutes = Int(workoutDuration.text ?? "") else {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Please enter numbers only.",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }
        
        var results = ""
        
        //steps
        if steps < 10000{
            let stepsLeft = 10000 - steps
            results += "You have \(stepsLeft) steps left to reach your goal!\n"
        }else{
            results += "You have reached your goal!\n"
        }
            
        ///workout
        let walkingMinutes = steps/100
        let totalMinutes = minutes + walkingMinutes
        let estimatedActiveMinutes = 30 - (steps / 100)
        results += "From walking alone, you've exercised for approximately \(walkingMinutes) minutes.\n"
        let minsLeft = max(0,30-totalMinutes)
        if totalMinutes < 30{
            results += "You have \(minsLeft) minutes left to reach your 30 minute goal!\n"
        } else {
            results += "You have reached your 30 minute goal!\n"
        }
        
        feedback.text = results
        //10,000 steps goal, 1,000 steps is 10 minutes
        //At least 30 minute workout, and this is how close you are
    }
    @IBOutlet weak var feedback: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
