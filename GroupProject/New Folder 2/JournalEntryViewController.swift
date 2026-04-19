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
    var journalEntries: [JournalEntry] = []
    
    
    
    
    
    
    
    
    //Overrride
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
