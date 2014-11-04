//
//  Events.swift
//  ConceptEventEngine
//
//  Created by Austin Tooley on 11/4/14.
//  Copyright (c) 2014 Austin Tooley. All rights reserved.
//
//
//import Foundation
//
//let eventOne = {(entity: Entity)->()  as
//    
//    //generate uuid
//    let uuid = SUUID().UUIDString
//    
//    //perform check for failure
//    if didFail(entity) {
//        println("About to return failFlag for ID: \(entity.failFlag!)")
//        
//        //if failed, was it this closure?
//        if uuid == entity.failFlag! {
//            
//        }
//            //go to parent
//        else {
//            
//        }
//    }
//    
//    //perform action
//    println("Event One performed on Entity number: \(entity.number)")
//    
//    //set fail flag for testing purose
//    let randNum = Int(arc4random_uniform(10))
//    if randNum % 5 == 0 {
//        entity.failFlag = uuid
//    }
//    
//    //pass to next closure
//}
//
//let eventTwo = {(entity: Entity)->  as
//    
//    //generate uuid
//    let uuid = SUUID().UUIDString
//    
//    //check for fail
//    
//    
//    //perform action
//    println("Event Two performed on Entity number: \(entity.number)")
//    
//    //set fail flag for testing purose
//    let randNum = Int(arc4random_uniform(10))
//    if randNum % 5 == 0 {
//        entity.failFlag = uuid
//    }
//    
    //pass to next closure

    
//}