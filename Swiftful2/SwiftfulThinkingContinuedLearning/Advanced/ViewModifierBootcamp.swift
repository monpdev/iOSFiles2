//
//  ViewModifierBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 19/03/2023.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
    
}

struct ViewModifierBootcamp: View {

    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.headline)
                .withDefaultButtonFormatting(backgroundColor: .orange)
               
            Text("Hello, everyone!")
                .font(.subheadline)
                .withDefaultButtonFormatting()
            
            Text("Hello,Friends!")
                .font(.title)
                .withDefaultButtonFormatting(backgroundColor: .red)
        }
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
