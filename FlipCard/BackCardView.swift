//
//  BackCardView.swift
//  FlipCardAnimation
//
//  Created by Mon P. on 21/07/2025.
//

import SwiftUI

struct BackCardView: View {
    
    let isFlipped: Bool
    let rotationAngle: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(colors: [Color.orange, Color.red.opacity(0.8),
                                        Color.purple.opacity(0.6)],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
            )
            .shadow(color: .orange.opacity(0.3), radius:20, x:0, y:10)
            .overlay(
                VStack(spacing: 20) {
                    Text("Back Side")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    VStack(spacing:12){
                        Text("Here you can see additional information about the card")
                            .font(.body)
                            .foregroundColor(.white.opacity(0.9))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                        
                        Text("Tap again to return to the image.")
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.8))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 25)
                    }
                }
                    .padding(35)
            )
            .opacity(isFlipped ? 1:0)
            .rotation3DEffect(
                .degrees(rotationAngle - 180), axis:(x:0, y:1, z:0))
    }
    
}

        
    

#Preview {
    BackCardView(isFlipped: true, rotationAngle: 180)
        .frame(width: 320, height:420)
}

//now at 3:50/21.52
