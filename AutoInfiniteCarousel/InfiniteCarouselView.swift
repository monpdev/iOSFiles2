/  InfiniteCarouselView.swift
//  AutoInfiniteCarousel
//
//  Created by Mon P. on 02/08/2025.
//

import SwiftUI

struct InfiniteCarouselView: View {
    
    @State private var scrollPosition = ScrollPosition()
    
    private let itemSpacing: CGFloat = 8
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (spacing: itemSpacing){
                ForEach(1...25, id: \.self) {i in
                    Button {
                        withAnimation(.spring(.snappy)) {
                            scrollPosition.scrollTo(id: i)
                        }
                    } label: {
                    CarouselCard(imageName: String(i))
                        .id(i)
                    }
                }
            }
            .safeAreaPadding(.horizontal)
        }
        .scrollClipDisabled()
        .scrollPosition($scrollPosition, anchor: .center)
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



