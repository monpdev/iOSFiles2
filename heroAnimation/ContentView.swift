//  ContentView.swift
//  heroAnimation
//
//  Created by Mon P. on 01/09/2025.
//

import SwiftUI

//MARK: -Sample Data
struct CardData: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    let imageName: String
    
}

//MARK: -ContentView

struct ContentView: View {
    var body: some View {
        CardsListView()
    }
}


//MARK: -CardsListView
struct CardsListView: View {
    @Namespace private var namespace
    
    //sample card data
    
    @State private var cards: [CardData] = [
        CardData(title: "SwiftUI Intro", color: .blue, imageName: "scribble"),
        CardData(title: "Combine", color: .red, imageName: "rectangle.grid.2x2.fill"),
        CardData(title: "Matched Geometry", color: .green, imageName: "arrow.left.and.right"),
        CardData(title: "Async", color: .orange, imageName: "clock.badge.checkmark.fill")
    ]
    
    
}
