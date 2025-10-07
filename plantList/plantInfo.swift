//
//  plantInfo.swift
//  plantList
//
//  Created by Mon P. on 28/09/2025.
//

import Foundation
import SwiftUI

struct Plant: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let order: String
    let family: String
    let species: String
    let genus: String
    
}


let plants = [
    Plant(name: "Lily", image: "lilies", order: "Lily order", family: "Lily family", species: "Lily species", genus: "Lily genus"),
    Plant(name: "Orchid", image: "orchids", order: "Orchid order", family: "Orchid family", species: "Orchid species", genus: "Orchid genus"),
    Plant(name: "Peony", image: "peony", order: "Peony order", family: "Peony family", species: "Peony species", genus: "Peony genus"),
    Plant(name: "Rose", image: "rose", order: "Rose order", family: "Rose family", species: "Rose species", genus: "Rose genus"),
    Plant(name: "Sunflower", image: "sunflower", order: "Sunflower order", family: "Sunflower family", species: "Sunflower species", genus: "Sunflower genus"),
    Plant(name: "Tulip", image: "tulips", order: "Tulip order", family: "Tulip family", species: "Tulip species", genus: "Tulip genus")
]











