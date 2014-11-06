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
    var i = 0;
    for (i; i < 10; i++) {
        events.append(  Event(id: i, action: {(entity: Entity, id: Int) -> (Int?) in
            
            //check if there was a failure
            
            if didFail(entity) {
                println("About to return failFlag for ID: \(entity.failFlag!)")
                return entity.failFlag!
            }
            
            
            //perform action
            println("Action performed on Entity number: \(entity.number)")
            
            //set fail flag for testing purose
            let randNum = Int(arc4random_uniform(10))
            if randNum % 5 == 0 {
                entity.failFlag = id
            }
            
            //close
            return nil
        }))
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