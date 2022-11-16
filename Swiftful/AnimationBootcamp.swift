//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 12/11/2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
                
//                withAnimation(
//                    Animation
//                        .default
//                            //.repeatCount(5, autoreverses: true)
//                         .repeatForever(autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                }
           
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.easeIn)
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
