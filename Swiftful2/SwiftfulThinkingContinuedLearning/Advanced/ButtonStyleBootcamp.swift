//
//  ButtonStyleBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 20/03/2023.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    
    let scaledAmount: CGFloat
    
    init(scaledAmount: CGFloat) {
        self.scaledAmount = scaledAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            //.brightness(configuration.isPressed ? 0.1 : 0)
            .opacity(configuration.isPressed ? 0.3 : 1.0)
            
    }
}


extension View {
    func withPressableStyle(scaledAmount: CGFloat = 0.9) -> some View {
       buttonStyle(PressableButtonStyle(scaledAmount: scaledAmount))
        
    }
    
}


struct ButtonStyleBootcamp: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Click Me")
                .font(.headline)
                .withDefaultButtonFormatting()
            
        })
        .withPressableStyle(scaledAmount: 0.9)
        //.buttonStyle(ButtonPressableStyle())
        .padding(40)
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
