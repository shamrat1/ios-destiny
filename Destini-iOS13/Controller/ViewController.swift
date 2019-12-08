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
    
    var story = StoryBrain()
    var storyLine = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        nextStory()
    }

    @IBAction func choiceAction(_ sender: UIButton) {
        if sender.tag == 1{
            let destination = story.list[storyLine].choice1Destination
            storyLine = destination
        }else {
            let destination = story.list[storyLine].choice2Destination
            storyLine = destination
        }
        nextStory()
    }
    
    func nextStory() -> Void {
        storyLabel.text = story.list[storyLine].title
        choice1Button.setTitle(story.list[storyLine].choice1, for: .normal)
        choice2Button.setTitle(story.list[storyLine].choice2, for: .normal)
    }
}

