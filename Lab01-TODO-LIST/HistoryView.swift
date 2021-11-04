//
//  HistoryView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//

import SwiftUI

struct HistoryView: View {
    @ObservedObject var list: TaskStorage
    var body: some View {
        NavigationView {
            List {
                Text("Old tasks:")
                    .font(.largeTitle)
                    .italic()
                    .padding(15)
                    .multilineTextAlignment(.center)
                ForEach( list.taskList, id: \.id  ) {  task in
                    if !task.isActive {
                            HStack {
                                Text(task.taskDesc)
                                .font(.title)
                                .frame(minWidth: 100, maxWidth: 300)

                                Button(action: {
                                    withAnimation(.easeIn(duration: 2.0)){
                                    var found: Int = 0
                                    for i in (0...list.taskList.count-1) {
                                        if list.taskList[i].id == task.id {
                                            found = i
                                        }
                                    }
                                    list.taskList.remove(at: found)
                                    }
                                }) {
                                    HStack {
                                        Image(systemName: "minus.circle")
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

//struct HistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        TodoView( list: .constant([]))
//    }
//}
