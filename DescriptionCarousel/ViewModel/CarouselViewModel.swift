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
        
}





