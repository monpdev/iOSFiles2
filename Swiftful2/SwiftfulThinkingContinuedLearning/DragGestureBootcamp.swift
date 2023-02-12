//
//  DragGestureBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 12/02/2023.
//

import SwiftUI

struct DragGestureBootcamp: View {
    
    @State var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("\(offset.width)")
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .gesture(
                    DragGesture()
                        .onChanged {value in
                            withAnimation(.spring()) {
                                offset = value.translation
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                offset =  .zero
                                //offset = CGSize(width:0 , height: 0)
                    }
                }
            )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmont() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = currentAmount/max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10
        return percentageAsDouble * maxAngle
    }
    
    
}

struct DragGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp()
    }
}
