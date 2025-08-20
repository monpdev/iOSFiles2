//In PROGRESS
//  ContentView.swift
//  StoryCarousel
//
//  Created by Mon P. on 18/08/2025.
//

import SwiftUI

//MARK: Header
//Display an animated text header

struct AnimatedText: View {
    
    @State private var animate = false
    
    var body: some View {
        Text("DAY IN THE LIFE")
            .font(.largeTitle)
            .fontWeight(.bold)
            .scaleEffect(animate ? 1.2 : 1.0)
            .opacity(animate ? 1.0 : 0.5)
            .foregroundColor(animate ? .blue : .red)
            .animation(
                Animation.easeInOut(duration: 1.5)
                    .repeatForever(autoreverses: true),
                value: animate

            )
            .onAppear {
                animate = true
            }
    }
    
}



// Displays text with a typing effect

struct TypingText: View {
    
    let fullText: String
    
    @State private var displayedText: String = ""
    @State private var currentIndex : Int = 0
    @State private var timer: Timer? = nil
    
    var body: some View {
        Text(displayedText)
            .font(.system(size: 22))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 300, alignment: .leading)
        //start typing
            .onAppear {
                
                startTypingk()
                
            }
            
    }
    
    
}








//Scrap
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}
