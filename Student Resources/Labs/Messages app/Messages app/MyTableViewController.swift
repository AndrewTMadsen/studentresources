//
//  ViewController.swift
//  DemoAutolayout
//
//  Created by Andrew Madsen on 2/26/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import UIKit

struct Message {
    var message: String
    var timestamp: String
    var who: String
}

class MyTableViewController: UITableViewController {
    
    var isMe: Bool = true
    let formatter = DateFormatter()
    
    // Messages and timestamps
    var messages = [Message]()
    
    // Identifier for the table view cell
    let meCellIdentifier = "meCell"
    let themCellIdentifier = "themCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        // Only show separators where there is data
        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        // Dynamically size the height of the table view cells
        self.tableView.estimatedRowHeight = 90.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(MyTableViewController.addEntry))
        
        self.navigationItem.rightBarButtonItems = [add]
    }
    
    
    @objc func addEntry(sender: AnyObject) {
        //1. Create the alert controller.
        let alert = UIAlertController(title: "New Entry", message: "Enter a message", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.text = ""
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            
            let now = Date()
            let dateString = self.formatter.string(from: now)
            let takeTurns = self.messages.count % 2 == 0
            
            self.messages.append(
                Message(message: (textField?.text?.isEmpty)! ? "Nothing Here" : (textField?.text)!,
                        timestamp: dateString,
                        who: takeTurns ? self.meCellIdentifier : self.themCellIdentifier)
            )
            
            self.tableView.reloadData()
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
    // Only one section in the table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Rows is equal to the number of Messages defined above
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        // Our custom cell so we can access the message and timestamp
        let meCell = tableView.dequeueReusableCell(withIdentifier: meCellIdentifier, for: indexPath) as! MeCell
        
        if (!messages[row].who.isEmpty && messages[row].who == meCellIdentifier) {
            
            // Set the labels in the custom cell
            meCell.messageLabel.text = messages[row].message
            meCell.timeLabel.text = messages[row].timestamp
            
            return meCell
        } else if (!messages[row].who.isEmpty && messages[row].who == themCellIdentifier) {
            // Our custom cell so we can access the message and timestamp
            let themCell = tableView.dequeueReusableCell(withIdentifier: themCellIdentifier, for: indexPath) as! ThemCell
            
            // Set the labels in the custom cell
            themCell.messageLabel.text = messages[row].message
            themCell.timeLabel.text = messages[row].timestamp
            
            return themCell
        }
        
        return meCell
    }
}

class MeCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

class ThemCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
