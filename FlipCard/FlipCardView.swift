//
//  FlipCardView.swift
//  FlipCardAnimation
//
//  Created by Mon P. on 23/07/2025.
//

import SwiftUI

struct FlipCardView: View {
    
    @StateObject private var cardManager = CardManager()
    
    var body: some View {
        ZStack {
            FrontCardView(isFlipped: cardManager.isFlipped, rotationAngle: cardManager.rotationAngle)
            BackCardView(isFlipped: cardManager.isFlipped, rotationAngle: cardManager.rotationAngle)
        }
        .frame(width: 320, height: 420)
        .onTapGesture {
            cardManager.flipCard()
        }
    }
}

#Preview {
    FlipCardView()
}
