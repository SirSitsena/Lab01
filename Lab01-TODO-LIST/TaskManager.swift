//
//  TaskManager.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//
import Foundation

class Task:ObservableObject, Identifiable{
    let id = UUID().uuidString
    var taskDesc: String = ""
    @Published var isActive: Bool = true
    
    init( taskDesc: String ){
        self.taskDesc = taskDesc
    }
}


