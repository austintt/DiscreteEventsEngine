//
//  Queue.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

import Foundation

func simulateEntity(entity: Entity, events: [Event]) {
    println("Simulating enitiy number \(entity.number)")
    for (var i = 0; i < events.count; i++){
        println("about to perform action number \(events[i].id)")
        let failFlag = events[i].action(entity: entity, id: events[i].id)
        
        //go back to failure
        if failFlag != nil {
            println("Attempting to go back to event \(i) to fix failure")
            i = failFlag! - 1
            
        }
        
    }
}

//queue done