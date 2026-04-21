
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
        //Criteria: User needs to sleep more 8 hrs a day, needs more water 2.5L a day, and cant exceed four hours of phone time
        //Here I convert inputs into numbers
        guard let sleep = Double(userSleep.text ?? ""),
              let water = Double(userWater.text ?? ""),
              let phone = Double(userPhone.text ?? ""),
              let stress = Int(userStress.text ?? "") else {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Please enter valid numbers.",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        
        //Here I build feedback
        var results = ""
        
        //Sleep
        if sleep < 8 {
            results += "You need more sleep. Try to reach at least 8 hours.\n"
        } else {
            results += "Good job on sleep.\n"
        }
        
        //Water
        if water < 2.5 {
            results += "You need to drink more water (goal: 2.5L).\n"
        } else {
            results += "Your water intake looks good.\n"
        }
        
        //Phone time
        if phone > 4 {
            results += "Too much phone time. Try to stay under 4 hours.\n"
        } else {
            results += "Your phone usage is in a good range.\n"
        }
        
        //Stress (simple scale idea 1–10)
        if stress >= 7 {
            results += "Your stress is high. Try relaxing activities.\n"
        } else {
            results += "Your stress level looks manageable.\n"
        }
        
        // Here I display the feedback
        feedback.text = results
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
