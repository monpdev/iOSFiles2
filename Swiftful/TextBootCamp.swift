//
//  TextBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 24/10/2022.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
//        Text("Hello world! This is the Swiftful Thinking Bootcamp Available on Youtube. This will teach you Beginner,Intermediate and Advanced SwiftUI. It is a great resource!")
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold,
//                          design:.serif))
//             .baselineOffset(50.0)
//             .kerning(10.0)
// kerning is offsets in points between 2 characters
               .multilineTextAlignment(.leading)
               .foregroundColor(.red)
               .frame(width: 200, height: 100, alignment: .center)
               .minimumScaleFactor(0.1)
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
