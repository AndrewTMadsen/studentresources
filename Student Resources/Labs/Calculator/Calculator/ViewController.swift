//
//  ViewController.swift
//  Calculator
//
//  Created by Andrew Madsen on 2/28/18.
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

    func reset() {
       displayLabel.text = "0"
    }
    
    
//Numbers--light Grey
    @IBAction func zeroTapped(_ sender: UIButton) {
        guard displayLabel.text != nil else {
            return
        }
       // self.displayLabel.text = (displayLabel.text ?? "") + number
    }
    @IBAction func oneTapped(_ sender: UIButton) {
        
    }
    @IBAction func twoTapped(_ sender: UIButton) {
        
    }
    @IBAction func threeTapped(_ sender: UIButton) {
        
    }
    @IBAction func fourTapped(_ sender: UIButton) {
        
    }
    @IBAction func fiveTapped(_ sender: UIButton) {
        
    }
    @IBAction func sixTapped(_ sender: UIButton) {
        
    }
    @IBAction func sevenTapped(_ sender: UIButton) {
        
    }
    @IBAction func eightTapped(_ sender: UIButton) {
        
    }
    @IBAction func nineTapped(_ sender: UIButton) {
        
    }
    @IBAction func dotTapped(_ sender: UIButton) {
        
    }
    //Operateors--Red
    @IBAction func equalsTapped(_ sender: UIButton) {
        
    }
    @IBAction func plusTapped(_ sender: UIButton) {
        
    }
    @IBAction func minusTapped(_ sender: UIButton) {
        
    }
    @IBAction func multiTapped(_ sender: UIButton) {
        
    }
    @IBAction func devideTapped(_ sender: UIButton) {
    }
    
    //others--Dark Gray
    @IBAction func percentTapped(_ sender: UIButton) {
        
    }
    @IBAction func plusMinusTapped(_ sender: UIButton) {
        
    }
    @IBAction func clearTapped(_ sender: UIButton) {
        
    }
    @IBOutlet weak var displayLabel: UILabel!
}

