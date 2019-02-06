//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Emily Kirk on 2/6/19.
//  Copyright © 2019 Emily Kirk. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var name : String
    var className : String
    var date = String
    
    init(name: String, className: String, date: String) {
        self.name = name
        self.className = className
        self.date = date
    }
}
