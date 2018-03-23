//
//  ViewController.swift
//  LoginSegue
//
//  Created by Andrew Madsen on 3/16/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HotDog"{
            segue.destination.view.backgroundColor = .blue
            
        }else if segue.identifier == "ForgotPassword"{
            guard let color = sender as? UIColor else{
                return
            }
            
            segue.destination.view.backgroundColor = color
        }
    }
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotPassword", sender: UIColor.green)
    }
    @IBAction func darthVader(Chewie:UIStoryboardSegue) {
        
    }
    
}

