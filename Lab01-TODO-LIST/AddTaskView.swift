//
//  AddTaskView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

//@State private var InputText: String = ""

struct AddTaskView: View {
    @State private var InputText: String = ""
    var List: [Task] = []
    @Binding var List: TaskList
    var body: some View {
        HStack{
            TextField("Enter the task", text: $InputText, onCommit:{
                
            } )
                .multilineTextAlignment(.center)
                .frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: .infinity)
            
            Button("Create", action:{
                List.append(Task(TaskDesc: InputText, isActive: true))
            })
        }
        
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
