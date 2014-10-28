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
    for event in events {
        println("about to perform action number \(event.number)")
        event.action(entity)
    }
}

//queue done