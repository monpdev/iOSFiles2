//
//  TabBarItem.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 03/05/2023.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}
    
enum TabBarItem: Hashable {
    case home, favorites, profile, messages
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .favorites: return "heart"
        case .profile: return "person"
        case .messages: return "message"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Favourites"
        case .profile: return "Profile"
        case .messages: return "Messages"
        
        }
    }
    
    var color: Color {
        switch self {
        case .home: return Color.red
        case .favorites: return Color.blue
        case .profile: return Color.green
        case .messages: return Color.orange
            
        }
    }
}

    



//35.56..52.04
