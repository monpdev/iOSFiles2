//
//  FrontCardView.swift
//  FlipCardAnimation
//
//  Created by Mon P. on 22/07/2025.
//

import SwiftUI

struct FrontCardView: View {
    let isFlipped: Bool
    let rotationAngle: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.clear)
            .shadow(color: .black.opacity(0.3), radius: 25, x:0, y:15)
            .overlay(
                ZStack {
                    Image("volcano")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 320, height:420)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    LinearGradient(colors: [
                        Color.black.opacity(0.2),
                        Color.clear,
                        Color.black.opacity(0.4),
                        Color.black.opacity(0.7)
                    ],
                        startPoint: .top,
                        endPoint: .bottom)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    
                    VStack {
                        HStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .frame(width: 60, height: 30)
                                .overlay(
                                    HStack(spacing:4) {
                                        Image(systemName: "mountain.2.fill")
                                            .font(.system(size: 12))
                                            .foregroundColor(.white)
                                        Text("Peak")
                                            .font(.caption)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                    }
                                )
                                .padding(.top, 20)
                                .padding(.trailing, 20)
                        }
                        Spacer()
                    }
                    
                    VStack {
                        Spacer()
                        VStack (spacing:15) {
                            HStack {
                                Image(systemName: "location.fill")
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius:2)
                                
                                Text("Mountain")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3)
                                
                            }
                            Text("Majestic Peaks")
                                .font(.headline)
                                .foregroundColor(.white.opacity(0.95))
                                .shadow(color: .black, radius:2)
                            
                            HStack(spacing: 20) {
                                HStack(spacing:6) {
                                    Image(systemName: "arrow.up.circle.fill")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                        .shadow(color: .black, radius: 1)
                                    
                                }
                                
                                HStack(spacing:6){
                                    Image(systemName: "thermometer.snowflake")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                    Text("-5C")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                        .shadow(color: .black,radius: 1)
                                    
                                }
                            }
                            
                            Text("Tap to flip")
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.9))
                                .shadow(color: .black, radius: 2)
                                .padding(.top, 8)
                            
                        }
                        .padding(.bottom, 35)
                    }
                }
            )
        
            .opacity(isFlipped ? 0:1)
            .rotation3DEffect(
                .degrees(rotationAngle),
                axis: (x:0, y:1, z:0))
        }
    }



#Preview {
    FrontCardView(isFlipped: false, rotationAngle: 0)
        .frame(width: 320, height: 420)
}

