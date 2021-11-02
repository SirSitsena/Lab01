//
//  TaskManager.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//
import Foundation

class Task: ObservableObject, Identifiable{
    var id: UUID
    var taskDesc: String = ""
    var isActive: Bool = true
    
    init( taskDesc: String ){
        self.id = UUID.init()
        self.taskDesc = taskDesc
        self.isActive = true
    }
}
