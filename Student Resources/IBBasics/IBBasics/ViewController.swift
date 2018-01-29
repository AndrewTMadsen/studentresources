//
//  ViewController.swift
//  IBBasics
//
//  Created by Andrew Madsen on 1/29/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

 
    @IBOutlet weak var mainLabel: UILabel!
    @IBAction func changeButton(_ sender: Any) {
        mainLabel.text = "This is cool as beans "
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

