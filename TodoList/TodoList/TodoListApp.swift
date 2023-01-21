//
//  TodoListApp.swift
//  TodoList
//
//  Created by Mon P. on 13/01/2023.
//

import SwiftUI


/*
 MVVM Architecture
 
 Model-data point
 View -UI
 ViewModel-manages Models for View
 
 */


@main
struct TodoListApp: App {
    
    var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
