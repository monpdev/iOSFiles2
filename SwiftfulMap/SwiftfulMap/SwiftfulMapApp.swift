//
//  SwiftfulMapApp.swift
//  SwiftfulMap
//
//  Created by Mon P. on 01/02/2023.
//

import SwiftUI

@main
struct SwiftfulMapApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
