//
//  Event.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

/************
 DEPRICATED
*************/
import Foundation

struct Event {
    var action:(entity: Entity, id: Int)->(Int?)
    var id: Int
    
    init(id: Int, action: (entity: Entity, id: Int)->(Int?)) {
        
        self.action = action
        self.id = id
    }
    
    
}

let didFail = {(entity: Entity) -> (Bool) in
    var didFailFlag = false
    println("Checking for failure")
    if entity.failFlag != nil {
        println("Found failure")
        didFailFlag = true
    }
    return didFailFlag
}