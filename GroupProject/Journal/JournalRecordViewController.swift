import UIKit

class JournalRecordViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // I reload the table each time this screen appears
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return JournalEntryViewController.journalEntries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath)

        let oneEntry = JournalEntryViewController.journalEntries[indexPath.row]

        cell.textLabel?.text = oneEntry.subject
        cell.detailTextLabel?.text = oneEntry.date

        return cell
    }
}
