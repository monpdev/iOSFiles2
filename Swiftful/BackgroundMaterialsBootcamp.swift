//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 03/01/2023.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height:4)
                    .padding()
                
                Spacer()
                
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
           // .background(Color.black.opacity(0.5))
           // .background(.thinMaterial)
            .background(.regularMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("people")
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
