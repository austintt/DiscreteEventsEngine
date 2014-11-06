//
//  Engine.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

import Foundation

func dispatchEntities(entities: [Entity], events: [Event]) {
    println("Dispatching \(entities.count) entities to \(events.count) events")
    //dispatch to thread and run queue
    
    for entity in entities {
        simulateEntity(entity, events)
    }
    
    //notify library when complete
    
}