//
//  ViewController.swift
//  ToDoApp
//
//  Created by Bum JunKwon on 03/07/2018.
//  Copyright © 2018 Bum Jun Kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Todos = TodoLogic()
    
    
    @IBOutlet weak var taskInput: UITextField!
    
    
    @IBAction func addTodo(_ sender: UIButton) {
        if let newTask = taskInput.text {
            Todos.addTask(of: newTask)
//            updateView()
        }
    }
    
    @IBOutlet var todoList: [UITableView]!
    
    
    
//    func updateView() {
//        for index in Todos.taskList.indices {
//            todoList[index] = Todos.taskList[index]
//        }
//    }
}



