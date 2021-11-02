//
//  TodoView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

struct TodoView: View {
    @Binding var list: [Task]
    var body: some View {
        NavigationView{
            VStack{
                ForEach( list, id: \.id  ) {  task in
                if task.isActive{
                    VStack{
                        HStack{
                            
                            Text(task.taskDesc)
                            .font(.title)
                            .frame(minWidth: 100, maxWidth: 300, minHeight: 15)

                            Button(action: {
                                var found: Int = 0
                                for i in (0...list.count-1) {
                                    if list[i].id == task.id {
                                        found = i
                                    }
                                }
                                list[found].isActive = false
                                list.append(Task( taskDesc: "garbage")) //Creates a new task and then
                                list.remove(at: list.count-1)           //deletes it to refresh the view
                            }) {
                                HStack {
                                    Image(systemName: "checkmark.circle.fill")
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
