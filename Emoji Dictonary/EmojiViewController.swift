//
//  EmojiViewController.swift
//  Emoji Dictonary
//
//  Created by Filip Engström on 2017-03-02.
//  Copyright © 2017 Filip Engström. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😂" {
            emojiDefLabel.text = "Laughing hard"
        }else if emoji == "😎" {
            emojiDefLabel.text = "Sunny outside"
        }else if emoji == "🤡" {
            emojiDefLabel.text = "Clown"
        }else if emoji == "😻" {
            emojiDefLabel.text = "Loving cat"
        }else if emoji == "🐔" {
            emojiDefLabel.text = "Chicken"
        }else if emoji == "💃" {
            emojiDefLabel.text = "Dancing"

        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
