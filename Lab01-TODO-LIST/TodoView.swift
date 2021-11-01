//
//  TodoView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

struct TodoView: View {
    @Binding  var list: [Task]
    var body: some View {
        
        VStack{
//            Button("Show", action: {
//                list.forEach{ task in
//                    NSLog("" + task.taskDesc)
//                }
//            })
            ForEach( list, id: \.id  ) {  task in
                if task.isActive{
                    Text(task.taskDesc)
                }
                            
            }
        }
    }
}
                        //List(array, id: \.self) { item in
                        //    Text(item.text)
                        //}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView( list: .constant([]))
    }
}
