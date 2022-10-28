//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 26/10/2022.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors:[Color.red, Color.blue, Color.orange]),
//                        startPoint: .topLeading,
//                        endPoint: .bottomTrailing)
//
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 200)
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180+45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
