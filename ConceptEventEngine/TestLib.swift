//
//  TestLib.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 10/28/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//

import Foundation

func runSim() {
    let entities = genEntities()
    dispatchEntities(entities, eventOne)
}

func genEntities() -> [Entity]{
    var entities: [Entity] = []
    for (var i = 0; i < 10; i++) {
        entities.append( Entity(number: i))
        println("Generated entity number \(i)")
    }
    
    return entities

}