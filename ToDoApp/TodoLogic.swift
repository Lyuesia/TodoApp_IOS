//
//  TodoLogic.swift
//  ToDoApp
//
//  Created by Bum JunKwon on 04/07/2018.
//  Copyright © 2018 Bum Jun Kwon. All rights reserved.
//

import Foundation
class TodoLogic {
    var taskList = [Task]()

    func addTask(of todoTask: String) {
        let newTask = Task(add: todoTask)
        taskList.append(newTask)
    }
    func deleteTask (at task: Task) {
        if let index = taskList.index(where: {$0.identifier == task.identifier}) {
            taskList.remove(at: index)
        }
        else {
            print("The Task dosen't exist")
        }
    }
    
    func markDone(of task: Task) {
        if let index = taskList.index(where: {$0.identifier == task.identifier}) {
            taskList[index].jobsDone = true
        }
        else {
            print("The Task dosen't exist")
        }
    }
    
}
