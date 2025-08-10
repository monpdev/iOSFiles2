//  Card.swift
//  DescriptionCarousel
//
//  Created by Mon P. on 07/08/2025.
//

import SwiftUI

//Card Model

struct Card: Identifiable {
    
    var id = UUID().uuidString
    var cardColor: Color
    var offset: CGFloat = 0
    var title: String
    
}
