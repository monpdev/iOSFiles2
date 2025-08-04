/  InfiniteCarouselView.swift
//  AutoInfiniteCarousel
//
//  Created by Mon P. on 02/08/2025.
//

import SwiftUI

struct InfiniteCarouselView: View {
    var body: some View {
        ForEach(1...7, id: \.self) {i in
            CarouselCard(imageName: String(i))
        }
       
    }
}


struct CarouselCard: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
             .resizable()
             .scaledToFit()
             .frame(width:130, height: 200)
             .clipShape(RoundedRectangle(cornerRadius: 16))
             .shadow(color: .black.opacity(0.3), radius: 4, x:0,y:4)
    }
}


#Preview {
    InfiniteCarouselView()
}

