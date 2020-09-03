//
//  Books.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 9/1/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import Foundation

struct Blinkist: Codable {
    var title, description, access : String
    var books : [Books]
}

struct Books: Codable {
    var title, author, book_type, length, image, narrator, chapters, price : String
}




