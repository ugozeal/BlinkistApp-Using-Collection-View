//
//  BookCell.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 9/1/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    static let reuseIdentifier = String(describing: BookCell.self)
    
    @IBOutlet var bookPrice: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var bookTitle: UILabel!
    @IBOutlet var bookAuthor: UILabel!
    @IBOutlet var bookType: UILabel!
    @IBOutlet var bookLength: UILabel!
}
