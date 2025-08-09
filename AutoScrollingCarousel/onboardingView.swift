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
        
        ZStack {
            AnimatedMeshGradient()
            
            VStack {
                VStack {
                    InfiniteCarouselView(imageNames: imageNames1, velocity: 0.5)
                    InfiniteCarouselView(imageNames: imageNames2, velocity: -0.25)
                    InfiniteCarouselView(imageNames: imageNames3, velocity: 0.3)
                    InfiniteCarouselView(imageNames: imageNames4, velocity: -0.2)
                }
                .rotationEffect(.degrees(-10))
                
                Spacer()
            }
            
            LinearGradient(
                colors: [.clear, .white],
                startPoint: .top,
                endPoint: .bottom)
        }
        .ignoresSafeArea()
        
        VStack(spacing: 26) {
            Spacer()
            
            Text("Find the Best Practice\nFor Your Health")
              .font(.system(.largeTitle, design: .default, weight: .bold))
              .multilineTextAlignment(.center)
              .foregroundStyle(
                LinearGradient(
                  colors: [.futurePink, .futureBlue, .futureViolet],
                  startPoint: .leading,
                  endPoint: .trailing
                )
              )
            
            Text("Find Your Best Routines, the Best for Your Health. Best Practice for Exercises and Relax!")
              .font(.system(.subheadline, design: .default, weight: .regular))
              .multilineTextAlignment(.center)
              .foregroundStyle(.gray)
              .padding(.horizontal, 32)
            
            Button {
              // TODO
            } label: {
              Text("Let's Go!")
                .font(.system(.headline, design: .default, weight: .semibold))
                .foregroundStyle(.white)
                .frame(height: 64)
                .frame(maxWidth: .infinity)
                .background(Color.futureBlue)
                .clipShape(Capsule())
            }
            .padding(.horizontal, 32)
          }

        }

    }


#Preview {
    onboardingView()
}




