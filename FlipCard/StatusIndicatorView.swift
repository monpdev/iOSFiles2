//
//  StatusIndicatorView.swift
//  FlipCardAnimation
//
//  Created by Mon P. on 24/07/2025.
//

import SwiftUI

struct StatusIndicatorView: View {
    let isFlipped: Bool
    
    var body: some View {
        HStack(spacing:20) {
            Circle()
                .fill(isFlipped ? Color.green : Color.blue)
                .frame(width: 12, height: 12)
                .scaleEffect(isFlipped ? 1.2: 1.0)
                .animation(.easeInOut(duration: 0.3), value: isFlipped)
            
            Text(isFlipped ? "Back Side" : "Front Side")
                .font(.caption)
                .foregroundColor(.secondary)
                .animation(.easeInOut(duration: 0.3), value: isFlipped)
            
        }
    }
}
