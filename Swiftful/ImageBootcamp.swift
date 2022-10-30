//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 29/10/2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        //Image("people")
        Image("flower")
            .renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
           // .scaledToFit()
            .scaledToFit()
            .frame(width:300, height:200)
            .foregroundColor(.red)
           // .clipped()
           // .cornerRadius(150)
           // .clipShape(
           //     Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                //Ellipse()
                
        //)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
