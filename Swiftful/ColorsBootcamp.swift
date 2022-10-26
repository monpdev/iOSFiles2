//
//  ColorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 25/10/2022.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(#colorLiteral(red:0.5, green: 0.3285, blue: 0.57, alpha: 1))
               // Color(UIColor.green)
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y:-20)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
