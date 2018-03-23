//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
var str = "Hello, playground"
import AVFoundation





class ButtonViewController : UIViewController {
    
    var counter = 0
    
    var label : UILabel!
    var button : UIButton!
    var starButton : UIButton!
    var beepPlayer: AVAudioPlayer?
    override func loadView() {
        
        // UI
        
        let view = UIView()
        view.backgroundColor = .black
        
        label = UILabel()
        
        button = UIButton(type: .system)
        button.setTitle("Do ne", for: .normal)
        button.tintColor = .red
        button.addTarget(self, action: #selector(updateView), for: .touchUpInside)
        
        starButton = UIButton(type: .system)
        starButton.setImage(UIImage(named: "star"), for: .normal)
        starButton.addTarget(self, action: #selector(toggleStarred), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(starButton)
        
        // Layout
        
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        starButton.translatesAutoresizingMaskIntoConstraints = true
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            button.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            button.firstBaselineAnchor.constraint(equalTo: label.firstBaselineAnchor),
            
            starButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            starButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
        
        self.view = view
        
        self.starred = false
        updateView()
    }
    
    @objc func updateView() {
        counter += 1
        label.text = "Counter: \(counter)"
        playBeepSound()
    }
    
    @objc func toggleStarred() {
        self.starred = !self.starred
    
    }
    
    var starred = false {
        didSet {
            starButton.tintColor = starred ? .orange : .gray
        }
    }
    func playBeepSound(){
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "woohoo.mp3", ofType: nil)!)
        do {
            beepPlayer = try AVAudioPlayer(contentsOf: url)
            beepPlayer?.play()
        } catch {
            // couldn't load file :(
        }
    }
}


PlaygroundPage.current.liveView = ButtonViewController()
