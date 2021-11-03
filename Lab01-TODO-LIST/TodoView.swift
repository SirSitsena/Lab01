//
//  TodoView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

struct TodoView: View {
    @ObservedObject var list: TaskStorage
    var body: some View {
        NavigationView {
            List {
                Text("Active tasks:")
                .font(.largeTitle)
                .italic()
                .padding(15)
                ForEach( list.taskList, id: \.id  ) {  task in
                    if task.isActive {
                            HStack {
                                Text(task.taskDesc)
                                .font(.title)
                                .frame(minWidth: 100, maxWidth: 300)

                                Button(action: {
                                    withAnimation(.easeInOut(duration: 2.0)){
                                        var found: Int = 0
                                        for i in (0...list.taskList.count-1) {
                                            if list.taskList[i].id == task.id {
                                                found = i
                                            }
                                        }
                                        list.taskList[found].isActive = false
                                        list.objectWillChange.send()
                                    }
                                    
//                                    list.taskList.append(Task( taskDesc: "garbage")) //Creates a new task and then
//                                    list.taskList.remove(at: list.taskList.count-1)           //deletes it to refresh the view
                                }) {
                                    HStack {
                                        Image(systemName: "checkmark.circle")
                                            .resizable()
                                            .frame(width: 32.0, height: 32.0)
                                    }
                            }
                            
                            }
                    }
                }
            }
        }
    }
}

//            Button("Show", action: {
//                list.forEach{ task in
//                    NSLog("" + task.taskDesc)
//                }
//            })

//struct TodoView_Previews: PreviewProvider {
//    static var previews: some View {
//        TodoView( list: .constant([]))
//    }
//}
