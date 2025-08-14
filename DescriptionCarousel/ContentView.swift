//
//  ContentView.swift
//  DescriptionCarousel
//
//  Created by Mon P. on 07/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var homeModel = CarouselViewModel()
    var body: some View {
        Home()
            .environmentObject(homeModel)
        
        //Using as Environment Object...
        
    }
}

#Preview {
    ContentView()
}
