//
//  EmojiTableViewControllerV2.swift
//  EmojiDictionary
//
//  Created by Student2562 on 2019-05-28.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit
import Foundation

class EmojiTableViewControllerV2: UITableViewController {
    
    var orgEmojisArray: OrganisedEmojis =
        OrganisedEmojis (emojis: [[Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),Emoji(symbol: "😕", name: "Confused Face",description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"), Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive")], [Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"), Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory")]])

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return orgEmojisArray.emojis.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case EmojiType.smileys.rawValue:
            return orgEmojisArray.emojis[section].count
        case EmojiType.animals.rawValue:
            return orgEmojisArray.emojis[section].count
        default:
            return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        let emojiBeingDisplayed = orgEmojisArray.emojis[indexPath.section]
        
        cell.textLabel?.text = ("\(emojiBeingDisplayed[indexPath.row].symbol)-\(emojiBeingDisplayed[indexPath.row].name)")
        cell.detailTextLabel?.text = "\(emojiBeingDisplayed[indexPath.row].description)"
        cell.showsReorderControl = true
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = orgEmojisArray.emojis[indexPath.section][indexPath.row]
        print ("\(emoji.name) - \(emoji.symbol)")
    }

    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEdittingMode = tableView.isEditing
        tableView.setEditing(!tableViewEdittingMode, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath){
        let movedEmoji = orgEmojisArray.emojis.remove(at: fromIndexPath.section)
        orgEmojisArray.emojis.insert(movedEmoji, at: to.section)
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

