//
//  onboardingView.swift
//  AutoInfiniteCarousel
//
//  Created by Mon P. on 06/08/2025.
//

import SwiftUI

struct onboardingView: View {
    var body: some View {
        let imageNames1 = (1...7).map {String($0)}
        let imageNames2 = (8...14).map {String($0)}
        let imageNames3 = (15...21).map {String($0)}
        let imageNames4 = (22...28).map {String($0)}
        
        VStack {
            InfiniteCarouselView(imageNames: imageNames1, velocity: 0.5)
            InfiniteCarouselView(imageNames: imageNames2, velocity: 0.5)
            InfiniteCarouselView(imageNames: imageNames3, velocity: 0.5)
            InfiniteCarouselView(imageNames: imageNames4, velocity: 0.5)
        }
        
    }
}

#Preview {
    onboardingView()
}
