//
//  CardView.swift
//  DescriptionCarousel
//
//  Created by Mon P. on 11/08/2025.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var model : CarouselViewModel
    var card: Card
    var animation: Namespace.ID
    var body: some View {
        VStack {
            
            Text("Monday 11 August")
                .font(.caption)
                .foregroundColor(Color.white.opacity(0.85))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.top, 10)
            
            HStack {
                Text(card.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width:250, alignment: .leading)
                    .padding()
           
                Spacer(minLength: 0)
            }
            
            Spacer(minLength: 0)
            
            HStack {
                
                Spacer(minLength: 0)
                
                Text("Read More")
                
                     Image(systemName: "arrow.right")
            }
            .foregroundColor(Color.white.opacity(0.9))
            .padding(30)
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(card.cardColor.cornerRadius(25))
        .cornerRadius(25)
    }
}

#Preview {
    ContentView()
}



