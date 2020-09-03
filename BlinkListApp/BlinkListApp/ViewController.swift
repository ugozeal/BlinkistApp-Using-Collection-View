//
//  ViewController.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 8/31/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = DataLoader().bookData
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
    }


}

