//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var userLocation = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let example = Story(title: storyBrain.stories[userLocation].title, choice1: storyBrain.stories[userLocation].choice1, choice2: storyBrain.stories[userLocation].choice2)
        storyLabel.text = example.title
        choice1Button.setTitle("\(example.choice1)", for: .normal)
        choice2Button.setTitle("\(example.choice2)", for: .normal)
        
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        userLocation =  storyBrain.nextStory(sender.currentTitle!)
        updateUI(userLocation)
       }
    
    
    func updateUI(_ userLocation: Int) {
        let example = Story(title: storyBrain.stories[userLocation].title, choice1: storyBrain.stories[userLocation].choice1, choice2: storyBrain.stories[userLocation].choice2)
        storyLabel.text = example.title
        choice1Button.setTitle("\(example.choice1)", for: .normal)
        choice2Button.setTitle("\(example.choice2)", for: .normal)
    }
    
    
}

