//
//  EmojiViewController.swift
//  Emoji Dictonary
//
//  Created by Filip Engström on 2017-03-02.
//  Copyright © 2017 Filip Engström. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    // Connected big emoji
    @IBOutlet weak var emojiLabel: UILabel!
    
    //Connected catagory label
    @IBOutlet weak var catagoryLabel: UILabel!
    //Connected emoji definition label
    @IBOutlet weak var emojiDefLabel: UILabel!
    //Connected birth label
    @IBOutlet weak var birthLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Setting passed emoji as big emoji
        emojiLabel.text = emoji.stringEmoji
        birthLabel.text = "Origination Date: \(emoji.birthYear)"
        catagoryLabel.text = "Catagory: \(emoji.catagory)"
        emojiDefLabel.text = emoji.definition
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
}
