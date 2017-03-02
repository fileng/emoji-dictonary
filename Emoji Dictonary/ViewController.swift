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
    var emojis = ["😂","😎","🤡","😻","🐔","💃"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    // Number of rows = length of array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    // Setting emoji in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
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
        emojiVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

