//
//  Event.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

import Foundation

struct Event {
    var action:(Entity)->()
    var number: Int
    
    init(number: Int, action: (Entity)->()) {
        self.action = action
        self.number = number
    }
    
    
}