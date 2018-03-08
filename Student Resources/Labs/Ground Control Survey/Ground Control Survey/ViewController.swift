//
//  ViewController.swift
//  Ground Control Survey
//
//  Created by Andrew Madsen on 2/23/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var yesLabel: UILabel!
    @IBOutlet weak var noLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    var response: Response? = nil
    
    @IBAction func mySwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            yesLabel.isHidden = false
            noLabel.isHidden = true
        } else {
            noLabel.isHidden = false
            yesLabel.isHidden = true
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
      sliderValue.text = "\(Int(sender.value))"
        
    }
    
    @IBAction func textEdit(_ sender: UITextField) {
        sender.endEditing(false)
    }
    @IBAction func SubmitDone(_ sender: Any) {
//        let response;(question: QuestionLabel.text, didAnswerYes: mySwitch.isOn, rating:Int(slider.Value) , maximumPossibleRating: Int(slider.maximumValue), comments: textField.text)
        reset()
    }
    
    func reset() {
        sliderValue.text = "(Int\(slider.maximumValue/2))"
        slider.value = slider.maximumValue/2
        mySwitch.isOn = true
        noLabel.isHidden = true
        yesLabel.isHidden = false
        text.text = nil
    }
}

