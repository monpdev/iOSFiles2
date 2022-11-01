//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 31/10/2022.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
       Image(systemName: "heart.fill")
            .font(.system(size: 45))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        )
                        .frame(width:100, height:100)
                        .shadow(color: .black, radius: 10, x:0.0, y:10)
                        .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width:35, height:35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: .black, radius: 10, x: 5, y:5)
                            
                            ,alignment:.bottomTrailing)
        )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
