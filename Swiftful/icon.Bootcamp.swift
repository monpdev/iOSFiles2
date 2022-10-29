//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 29/10/2022.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
       // Image(systemName: "heart.fill")
       // Image(systemName: "paperplane.fill")
        //Image(systemName: "books.vertical")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFill()
            //.font(.caption)
            //.font(.system(size:200))
            //.foregroundColor(.green)
            //.foregroundColor(Color(#colorLiteral(red: 0.925,green: 0.235, blue: 0.10191, alpha: 1)))
                
            .frame(width: 300, height:300)
           // .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
