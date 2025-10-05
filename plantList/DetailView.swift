//
//  DetailView.swift
//  plantList
//
//  Created by Mon P. on 28/09/2025.
//

import SwiftUI

struct DetailView: View {
    let plant: Plant
    
    
    var body: some View {
        VStack {
            Image(plant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipped()
                .cornerRadius(200)
                .shadow(radius: 5)
            
            Text(plant.name).font(.largeTitle)
                .fontWeight(.medium)
            
            Form {
                Section {
                    HStack {
                        Text("Order")
                        Spacer()
                        Text(plant.order)
                            .foregroundColor(.gray)
                        
                    }
                    
                    HStack {
                        Text("Family")
                        Spacer()
                        Text(plant.family)
                            .foregroundColor(.gray)
                        
                    }
                    
                    HStack {
                        Text("Genus")
                        Spacer()
                        Text(plant.genus)
                            .foregroundColor(.gray)
                        
                    }
                    
                    HStack {
                        Text("Species")
                        Spacer()
                        Text(plant.species)
                            .foregroundColor(.gray)
                        
                    }
                }
            }
        }
    }
}



#Preview {
    DetailView(plant: plants[0])
}




//21:21/27:27
