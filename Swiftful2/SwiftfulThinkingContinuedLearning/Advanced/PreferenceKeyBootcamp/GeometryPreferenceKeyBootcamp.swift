//
//  GeometryPreferenceKeyBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 28/04/2023.
//

import SwiftUI

struct GeometryPreferenceKeyBootcamp: View {
    
    @State private var rectSize: CGSize = .zero
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .frame(width: rectSize.width, height: rectSize.height)
                .background(Color.blue)
            Spacer()
            HStack {
                Rectangle()
                    
                GeometryReader {geo in
                    Rectangle()
                        .updateRectangleGeoSize(geo.size)
                }
                
                Rectangle()
            }
            .frame(height: 55)
        }
        .onPreferenceChange(RectangleGeometryPreferenceKey.self, perform:{ value in
            self.rectSize = value
        })
    }
}

struct GeometryPreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPreferenceKeyBootcamp()
    }
}


extension View {
    
    func updateRectangleGeoSize(_ size: CGSize)-> some View {
        preference(key: RectangleGeometryPreferenceKey.self, value: size)
    }
    
}


struct RectangleGeometryPreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
    
}






// 17:25...35.06
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .background(Color.blue)
//                    .frame(maxWidth: .infinity)
//                    .opacity(0)
//                Text("Hello, World!")
//                    .background(Color.blue)
//                    .frame(maxWidth: .infinity)
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .background(Color.blue)
//                    .frame(maxWidth: .infinity)
//                    .opacity(0)


//                        .overlay(
//                            Text("\(geo.size.width)").foregroundColor(
//                                .white)
//                        )
