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
        NavigationView {
            List {
                Text("Old tasks:")
                    .font(.largeTitle)
                    .italic()
                    .padding(15)
                    .multilineTextAlignment(.center)
                ForEach( list, id: \.id  ) {  task in
                    if !task.isActive {
                            HStack {
                                Text(task.taskDesc)
                                .font(.title)
                                .frame(minWidth: 100, maxWidth: 300)

                                Button(action: {
                                    var found: Int = 0
                                    for i in (0...list.count-1) {
                                        if list[i].id == task.id {
                                            found = i
                                        }
                                    }
                                    list.remove(at: found)
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
