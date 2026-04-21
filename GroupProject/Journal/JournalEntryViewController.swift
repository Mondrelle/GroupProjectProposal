//  JournalEntryViewController.swift
//  GroupProject
//  Created by Mondrelle Cheek on 4/19/26.
import UIKit

//Class
class JournalEntryViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subjectLabel: UITextField!
    @IBOutlet weak var entryField: UITextView!
    
    //We need to be able to save entries for future
    struct JournalEntry {
        //Variables
        var date: String?
        var subject: String?
        var entry: String?
    }//End of struct
    static var journalEntries: [JournalEntry] = []

    //Overrride
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DateFormatter()
        formatter.dateFormat = "M/d/yyyy"
        dateLabel.text = formatter.string(from: Date())
        entryField.allowsEditingTextAttributes = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let dateText = dateLabel.text,!dateText.isEmpty,
              let subjectText = subjectLabel.text,!subjectText.isEmpty,
              !entryField.text!.isEmpty else {
            let alert = UIAlertController(
                title: "Missing Information",
                message: "Please fill in all fields",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true, completion: nil)
            return
            
        }
        let newEntry = JournalEntry(date: dateText, subject: subjectText, entry: entryField.text)
        JournalEntryViewController.journalEntries.append(newEntry)
        performSegue(withIdentifier: "goToJournalRecord", sender: nil)
    }
}
