//
//  CardManager.swift
//  FlipCardAnimation
//
//  Created by Mon P. on 21/07/2025.
//

import SwiftUI

class CardManager: ObservableObject {
  
    @Published var isFlipped = false
    @Published var rotationAngle: Double = 0
    
    
    func flipCard() {
        withAnimation(.easeInOut(duration: 0.8)){
            isFlipped.toggle()
            rotationAngle += 180
            
        }
    }
    
    
    
}








//#Preview {
//    CardManager()
//}
