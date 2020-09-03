//
//  SecondScreenViewController.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 9/1/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import UIKit



class SecondScreenViewController: UIViewController {

    @IBOutlet var descriptionImage: UIImageView!
    @IBOutlet var descriptionBookName: UILabel!
    @IBOutlet var descriptionBookAuthor: UILabel!
    @IBOutlet var descriptionNarrator: UILabel!
    @IBOutlet var descriptionBookDuration: UILabel!
    @IBOutlet var descriptionChapterNum: UILabel!
    @IBOutlet var descriptionPrice: UIButton!
    
    func timeToHour(_ secs: String) -> String {
     var hours: Int
     var mins: Int
     if let timeToString = Int(secs) {
          hours = timeToString / 60
          mins = timeToString % 60
         return "\(hours)hours \(mins)Mins"
     }
     return ""
    }
    
    
    var book : Books?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionBookDuration.text = timeToHour(book?.length ?? "")
        descriptionBookName.text = book?.title
        descriptionImage.image = UIImage(named: book?.image ?? "")
        if let descriptionNarratorr = book?.narrator{
            descriptionNarrator.text = "Narrated by \(descriptionNarratorr)"
        }
        if let chapterNum = book?.chapters{
            descriptionChapterNum.text = "\(chapterNum) Chapters"
        }
        if let buttonDetails = book?.price{
            descriptionPrice.setTitle("Buy AudioBook - \(buttonDetails)", for: .normal)
        }
        descriptionBookAuthor.text = book?.author

    }
    
}
