//
//  ScrollViewReaderBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 12/02/2023.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    @State var scrollToIndex: Int = 0
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter a number here...", text: $textFieldText)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            Button("SCROLL NOW") {
                withAnimation (.spring()) {
                    
                    if let index = Int(textFieldText) {
                        scrollToIndex = index
                    }
                }
            }
            
            ScrollView {
                ScrollViewReader {proxy in
                    ForEach(0..<50) {index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    
                    .onChange(of: scrollToIndex, perform: { value in
                        withAnimation(.spring()) {
                            proxy.scrollTo(value, anchor: .top)
                        }
                    })
                }
            }
        }
    }
}


struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}
