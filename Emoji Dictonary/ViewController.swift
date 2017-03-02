//
//  ViewController.swift
//  Emoji Dictonary
//
//  Created by Filip Engström on 2017-03-01.
//  Copyright © 2017 Filip Engström. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Connected tableview
    @IBOutlet weak var tableView: UITableView!
    
    // Emojis in use
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    // Number of rows = length of array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    
    }
    
    // Setting emoji in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    // Moving to next view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    // Passing emoji to next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiVC = segue.destination as! EmojiViewController
        emojiVC.emoji = sender as! Emoji
        
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😂"
        emoji1.birthYear = 2010
        emoji1.catagory = "Smiley"
        emoji1.definition = "Laughing hard"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2007
        emoji2.catagory = "Smiley"
        emoji2.definition = "A guy with sunglasses"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2013
        emoji3.catagory = "Smiley"
        emoji3.definition = "Clown"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😻"
        emoji4.birthYear = 2010
        emoji4.catagory = "Smiley"
        emoji4.definition = "Loving cat"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐔"
        emoji5.birthYear = 2010
        emoji5.catagory = "Animal"
        emoji5.definition = "Laughing hard"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐹"
        emoji6.birthYear = 2015
        emoji6.catagory = "Animal"
        emoji6.definition = "Hamster"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

