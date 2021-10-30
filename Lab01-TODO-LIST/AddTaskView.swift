//
//  AddTaskView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

//@State private var InputText: String = ""

struct AddTaskView: View {
    @State private var inputText: String = ""
    @Binding  var list: [Task]
    

    var body: some View {
        
        VStack{
            TextField("Enter the task", text: $inputText, onCommit:{
            } )
                .multilineTextAlignment(.center)
                .frame(minWidth: 100, maxWidth: 300, minHeight: 150)
            
            Button("Create", action:{
                list.append(Task( taskDesc: inputText ))
//                NSLog( "count " + String(list.count)  )
//                NSLog( "Text is " + list[0].taskDesc  )
                inputText = ""
            })
        }
        
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView( list: .constant([]))
            .preferredColorScheme(.dark)
    }
}
