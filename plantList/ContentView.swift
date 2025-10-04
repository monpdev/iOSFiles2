//
//  ContentView.swift
//  plantList
//
//  Created by Mon P. on 23/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                List(plants) { plant in
                    NavigationLink(destination:
                                    DetailView(plant: plant)) {
                        plantRow(plant: plant)
                    }
                }.navigationTitle("Flowers and Plants")
            }
        }
    }
}



#Preview {
    ContentView()
}




struct  plantRow : View {
    let plant: Plant
    
    var body: some View {
        HStack {
            Image(plant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:80, height:80)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(plant.name).font(
                    .system(size: 20,
                            weight: .medium,
                            design: .serif))
            }
        }
    }

}







