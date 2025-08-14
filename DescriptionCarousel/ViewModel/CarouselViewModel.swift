//
//  CarouselViewModel.swift
//  DescriptionCarousel
//
//  Created by Mon P. on 07/08/2025.
//

import SwiftUI

class CarouselViewModel: ObservableObject {
   
        
        @Published var cards = [
            
            Card(cardColor: Color.yellow, title: "Bicycle as Aerobics"),
            Card(cardColor: Color.orange, title: "Yoga for Mind and Body"),
            Card(cardColor: Color.green, title: "Healthy Eating is Key"),
            Card(cardColor: Color.blue, title: "Meditate to Keep Focus"),
            Card(cardColor: Color.pink, title: "Spend Time Outdoor")
            
        ]
    
        @Published var swipedCard = 0
    
    //Detail Content
    
    @Published var showCard = false
    @Published var selectedCard = Card(cardColor: .clear, title: "")
    
    @Published var showContent = false
    
    var content = "A fun way to get fit– the adventure and buzz you get from coasting down hills and being outdoors means you are more likely to continue to cycle regularly, compared to other physical activities that keep you indoors or require special times or places."

        
}










