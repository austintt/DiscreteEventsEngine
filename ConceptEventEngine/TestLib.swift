//
//  TestLib.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

import Foundation

func runSim() {
    let events = genEvents()
    let entities = genEntities()
    
    dispatchEntities(entities, events)
}

func genEvents() -> [Event] {
    var events: [Event] = []
    for (var i = 0; i < 10; i++) {
        events.append(  Event(number: i, action: {(entity: Entity) -> () in println("Action performed on Entity number: \(entity.number)")}))
        println("Generated event number \(i)")
    }
    
    return events
}

func genEntities() -> [Entity]{
    var entities: [Entity] = []
    for (var i = 0; i < 10; i++) {
        entities.append( Entity(number: i))
        println("Generated entity number \(i)")
    }
    
    return entities

}