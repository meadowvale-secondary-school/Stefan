//
//  EmojiTableViewControllerV2.swift
//  EmojiDictionary
//
//  Created by Student2562 on 2019-05-28.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class EmojiTableViewControllerV2: UITableViewController {
    
    var emojis: [Emoji] = [
        Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"), Emoji(symbol: "😕", name: "Confused Face",description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"), Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"), Emoji(symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority"), Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"), Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"), Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"), Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"), Emoji(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"), Emoji(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"), Emoji(symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"), Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"), Emoji(symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage:
            "completion"), Emoji(symbol: "BruhmanEmoji.exe", name: "Scary", description: "Hoopla", usage: "never")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return emojis.count
        }else{
            return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name)"
        cell.detailTextLabel?.text = emoji.description
        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print ("\(emoji.name) - \(emoji.symbol)")
    }

    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEdittingMode = tableView.isEditing
        tableView.setEditing(!tableViewEdittingMode, animated: true)
        sender.title = !tableViewEdittingMode ? "Done" : "Edit"
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath){
        let movedEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedEmoji, at: to.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle{
        return UITableViewCell.EditingStyle.none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath : IndexPath) -> Bool{
        return false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
}
