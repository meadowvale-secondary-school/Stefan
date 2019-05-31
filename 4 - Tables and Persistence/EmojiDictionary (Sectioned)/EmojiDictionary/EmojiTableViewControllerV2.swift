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
    
    var stuff: OrganisedEmojis =
        OrganisedEmojis (emojis: [[Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),Emoji(symbol: "😕", name: "Confused Face",description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"), Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive")], [Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"), Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory")]])

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return stuff.emojis.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            print(stuff.emojis[section].count)
            return stuff.emojis[section].count
        case 1:
            print (stuff.emojis[section].count)
            return stuff.emojis[section].count
        default:
            return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        let emojiBeingDisplayed = stuff.emojis[indexPath.section]
        
        
        ///let emoji = organisedEmojisList[indexPath.row]
        
        
        
        cell.textLabel?.text = ("\(emojiBeingDisplayed[indexPath.row].symbol)-\(emojiBeingDisplayed[indexPath.row].name)")
        cell.detailTextLabel?.text = "\(emojiBeingDisplayed[indexPath.row].description)"
        cell.showsReorderControl = true
        return cell
    }
/*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print ("\(emoji.name) - \(emoji.symbol)")
    }

    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEdittingMode = tableView.isEditing
        tableView.setEditing(!tableViewEdittingMode, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath){
        let movedEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedEmoji, at: to.row)
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
*/
}

