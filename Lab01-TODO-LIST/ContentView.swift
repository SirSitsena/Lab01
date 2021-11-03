//
//  ContentView.swift
//  Lab01-TODO-LIST
//
//  Created by Anestis Cheimonettos on 2021-10-29.
//
import SwiftUI
import Combine


struct ContentView: View {
    @StateObject public var list = TaskStorage()
    var body: some View {

//            Text("ToDoList by Anestis")
//            .font(.largeTitle)
//            .italic()
//            .padding(.top, 30)
        TabView {
            AddTaskView(list: list)
                .tabItem {
                    Text("NewTask")
                    Image(systemName: "pencil")
                }
            TodoView(list: list)
                .tabItem {
                    Text("TODO")
                    Image(systemName: "list.bullet")
                }
            HistoryView(list: list)
                .tabItem {
                    Text("History")
                    Image(systemName: "tray.fill")
                }
        }
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
