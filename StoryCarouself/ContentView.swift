//In PROGRESS
//
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
                
                startTyping()
                
            }
        //reset and restart typing
            .onChange(of: fullText) {_ in
                resetTyping()
                startTyping()
                
            }
            .onDisappear {
                timer?.invalidate()
                timer = nil
            }
    }
    
    //start typing
    
    func startTyping() {
        //Invalidate any existing timer
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if currentIndex < fullText.count {
                let index = fullText.index(fullText.startIndex, offsetBy: currentIndex)
                displayedText.append(fullText[index])
                currentIndex += 1
            } else {
                timer.invalidate()
                self.timer = nil
                
                
            }
            
        }
        
        
    }
    
    //Reset typing
    
    func resetTyping() {
        displayedText = ""
        currentIndex = 0
        timer?.invalidate()
        timer = nil
        
    }
}

struct GSCarousel: View {
    
    @State private var currentIndex: Int = 0
    
    let imageNames = [
        "gs1","gs2","gs3","gs4","gs5",
        "gs6","gs7","gs8","gs9","gs10"
    ]
        
    //array of texts
    let storylines = [
        
        "The mountain ahead looks tall only until your first step makes it smaller.",
        "The moment you start you are already stronger than the person who did not.",
        "You are the author of today. Make the page worth re-reading.",
        "Every small victory is a brick in the empire you are building.",
        "Your future self is begging you not to quit right now.",
        "The struggle you are in today is the proof you are not standing still.",
        "Progress is quiet but it roars when you refuse to quit.",
        "Every failure is just a rehearsal for the strength you are about to show.",
        "Your limits are negotiable — challenge them",
        "Discomfort is proof that growth is knocking on your door."
    ]
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                    }
                }) {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.orange)
                        .font(.title)
                }
                .disabled(currentIndex == 0)
                
                
                
                
            }
            
            
            
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
