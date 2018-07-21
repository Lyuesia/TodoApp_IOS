//
//  Task.swift
//  ToDoApp
//
//  Created by Bum JunKwon on 04/07/2018.
//  Copyright © 2018 Bum Jun Kwon. All rights reserved.
//

import Foundation

struct Task {
    var content: String
    var jobsDone: Bool
    var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    
    init(add task: String){
        content = task
        jobsDone = false
        identifier = Task.getUniqueIdentifier()
    }
}
