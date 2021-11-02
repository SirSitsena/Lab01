//
//  AddTaskView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

struct AddTaskView: View {
    
    //Took this func from:www.coderoad.ru/27768064/Проверьте-содержит-ли-текстовое-поле-Swift-не-whitespace
    func inputCheck( inputText: String ) -> Bool {
            
        // Check empty string
        if inputText.isEmpty {
            return true
        }

            // Trim and check empty string
            return (inputText.trimmingCharacters(in: .whitespaces) == "")
        }
    
    @State private var inputText: String = ""
    @State private var check: String = " "
    @Binding  var list: [Task]    

    var body: some View {
        

        
            VStack{
                Text("Create a new task")
                .font(.largeTitle)
                .italic()
                .padding(.bottom, 80)

                TextField("Enter the task", text: $inputText, onCommit:{
                } )
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 100, maxWidth: 300, minHeight: 50)
                    .padding(.bottom, 100)
                
                Button("Let's do it!", action:{
                    if !inputCheck(inputText: inputText) {
                        list.append(Task( taskDesc: inputText))
                        inputText = ""
                    }
                    inputText = ""
                })
                    .font(.title3)
            }
        
        
    }
}

//                NSLog( "count " + String(list.count)  )
//                NSLog( "Text is " + list[0].taskDesc  )

//struct AddTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTaskView( list: .constant([]))
//            .preferredColorScheme(.dark)
//    }
//}
