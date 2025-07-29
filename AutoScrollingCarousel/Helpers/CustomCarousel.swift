
//
//  CustomCarousel.swift
//  AutoScrollingCarousel
//
//  Created by Mon P. on 27/07/2025.
//

import SwiftUI

struct CustomCarousel<Content: View>: View {
    
    @ViewBuilder var content: Content
    
    ///View Properties
    
    @State private var scrollPosition: Int?
    @State private var isScrolling: Bool = false
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            ScrollView(.horizontal) {
                HStack(spacing:0) {
                    Group(subviews: content) {collection in
                        if let lastItem = collection.last{
                            lastItem
                                .frame(width: size.width, height: size.height)
                                .id(-1)
                                .onChange(of: isScrolling) {oldValue,newValue in
                                    if !newValue && scrollPosition == -1 {
                                        scrollPosition = collection.count - 1
                                        
                                    }
                                }
                        }
                        
                        ForEach(collection.indices, id:\.self) {index in
                            collection[index]
                                .frame(width: size.width, height: size.height)
                                .id(index)
                            
                        }
                        
                        if let firstItem = collection.first{
                            firstItem
                                .frame(width: size.width, height: size.height)
                                .id(collection.count)
                        }
                    }
                }
            }
            .scrollPosition(id: $scrollPosition)
            .scrollTargetBehavior(.paging)
            .scrollIndicators(.hidden)
            .onScrollPhaseChange {oldPhase, newPhase in
                isScrolling = newPhase.isScrolling
            }
            .onAppear { scrollPosition = 0}
        }
    }
}

#Preview {
    ContentView()
}

