//
//  TabGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 27/12/2022.
//

import SwiftUI

struct TabGestureBootcamp: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.purple)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height:55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 5, perform: {
                    isSelected.toggle()
                })
            
        }
    }
}

struct TabGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureBootcamp()
    }
}
