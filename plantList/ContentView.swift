//
//  ContentView.swift
//  plantList
//
//  Created by Mon P. on 23/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(plants) { plant in
        
          plantRow(plant: plant)
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





//now at 6:36/27:27
