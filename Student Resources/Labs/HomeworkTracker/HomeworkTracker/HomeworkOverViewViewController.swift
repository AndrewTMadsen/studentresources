//
//  ViewController.swift
//  HomeworkTracker
//
//  Created by Andrew Madsen on 3/15/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import UIKit

class HomeworkOverViewViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AddButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    
    @IBAction func unwindToHomeworkViewController(segue: UIStoryboardSegue) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is AddHomeworkViewController {
            //going to add screen
            //setup 
        } else if segue.destination is HomeworkDetailsViewController {
            //going to details page
            //setup
        }
    }
}

extension HomeworkOverViewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return Homework.count
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .orange
        //        cell.textLabel?.text = homework[indexPath.row].title
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        performSegue(withIdentifier: "ToDetailsScreen", sender: homework[indexPath.row])
    }
    
    
}

