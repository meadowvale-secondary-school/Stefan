//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Student2562 on 2019-06-16.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var titleCellLabel: UILabel!
    @IBOutlet weak var authorCellLabel: UILabel!
    @IBOutlet weak var genreCellLabel: UILabel!
    @IBOutlet weak var lengthCellLabel: UILabel!

    func update(with book: Book){
        titleCellLabel.text = book.title
        authorCellLabel.text = book.author
        genreCellLabel.text = book.genre
        lengthCellLabel.text = book.length
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
