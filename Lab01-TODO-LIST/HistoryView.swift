//
//  HistoryView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

struct HistoryView: View {
    @Binding  var list: [Task]
    var body: some View {
        VStack{
//            Button("Show", action: {
//                list.forEach{ task in
//                    NSLog("" + task.taskDesc)
//                }
//            })
            ForEach( list, id: \.id  ) {  task in
                if !task.isActive{
                    HStack{
                    Text(task.taskDesc)
                    Button("Delete task", action:{
                        var found: Int = 0  // <= will hold the index if it was found, or else will be nil
                        for i in (0...list.count-1) {
                            if list[i].id == task.id {
                                found = i
                            }
                        }
                        list.remove(at: found)
                    })
                }
                }
                            
            }
        }
    }
}

//struct HistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        TodoView( list: .constant([]))
//    }
//}
