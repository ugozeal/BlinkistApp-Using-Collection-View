//
//  BookHeader.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 9/2/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import UIKit

class BookHeader: UICollectionReusableView {
    static let reuseIdentifier = String(describing: BookHeader.self)
    
    @IBOutlet var sectionSubHeader: UILabel!
    @IBOutlet var sectionHeader: UILabel!
}
