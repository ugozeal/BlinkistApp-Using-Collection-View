//
//  DataLoader.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 9/1/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import Foundation

public struct DataLoader{
    var bookData : Blinkist?
    
    init() {
        loadBookData()
    }
    
    mutating func loadBookData(){
        if let jsonFileLocation = Bundle.main.url(forResource: "jsonformatter", withExtension: "json"){
            
            do {
                let data = try Data(contentsOf: jsonFileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJsonFile = try jsonDecoder.decode(Blinkist.self, from: data)
                self.bookData = dataFromJsonFile
            } catch {
                print(error)
            }
        }
    }
}
