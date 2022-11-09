//
//  ExtractedFunctionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 08/11/2022.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
           Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}


struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
