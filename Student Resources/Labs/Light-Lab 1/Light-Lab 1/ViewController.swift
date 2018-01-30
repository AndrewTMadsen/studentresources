//
//  ViewController.swift
//  Light-Lab 1
//
//  Created by Andrew Madsen on 1/29/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var lightOn = true
    @IBAction func buttonPressed(_ sender: Any) {
         lightOn = !lightOn
        updateUI()
    }
    func updateUI () {
        
       
        if lightOn {
            view.backgroundColor = .white
        }else{
            view.backgroundColor = .black
        }
    }
    
    
    @IBOutlet weak var button: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

