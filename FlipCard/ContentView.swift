//
//  ContentView.swift
//  FlipCardAnimation
//
//  Created by Mon P. on 21/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var cardManager = CardManager()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [
                Color.blue.opacity(0.1),
                Color.purple.opacity(0.1)
            ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Flip Card")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(
                        LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing)
                    )
                
                ZStack {
                    
                    FrontCardView(isFlipped: cardManager.isFlipped, rotationAngle: cardManager.rotationAngle)
                    
                    BackCardView(isFlipped: cardManager.isFlipped, rotationAngle: cardManager.rotationAngle)
                    
                }
                .frame(width: 320, height: 420)
                .onTapGesture {
                    cardManager.flipCard()
                }
                
                StatusIndicatorView(isFlipped: cardManager.isFlipped)
            }
        }
    }
}

#Preview {
    ContentView()
}

