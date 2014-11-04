//
//  Engine.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

import Foundation

func dispatchEntities(entities: [Entity], event: Event) {
    println("Dispatching \(entities.count) entities")
    //dispatch to thread and run queue
    
    for entity in entities {
        simulateEntity(entity, event)
    }
    
    //notify library when complete
    
}