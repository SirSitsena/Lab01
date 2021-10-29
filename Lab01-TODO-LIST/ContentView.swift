//
//  ContentView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//
import SwiftUI



struct ContentView: View {

    @State private var TaskList: [Task] = []
    
    var body: some View {
        TabView {
            
            AddTaskView(list: $TaskList)
                .tabItem {
                    Text("NewTask")
                    Image(systemName: "pencil")
                }
            TodoView()
                .tabItem {
                    Text("TODO")
                    Image(systemName: "list.bullet")
                }
            HistoryView()
                .tabItem {
                    Text("History")
                    Image(systemName: "tray.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
