//
//  Contact.swift
//  ContactList
//
//  Created by Mon P. on 20/10/2025.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    let imageName: String
    let name: String
    let phone: String
    let email: String
    let address: String
    let id = UUID()
}

let contacts = [
    Contact(imageName: "AnnaA", name: "Anna A", phone: "+44 321456789", email: "anna.a@goomail.com", address: "1 King St. W1D 1NN"),
    Contact(imageName: "BethB", name: "Beth B", phone: "+44 456789123", email: "beth.b@goomail.com", address: "2 Queen St. W2D 2NA"),
    Contact(imageName: "CarlC", name: "Carl C", phone: "+44 789451123", email: "carl.c@goomail.com", address: "3 Dean St. W3D 3PA"),
    Contact(imageName: "DeborahD", name: "Deborah D", phone: "+44 569451999", email: "deborah.d@goomail.com", address: "4 Park Rd. NWX 4QA"),
    Contact(imageName: "EvanE", name: "Evan E", phone: "+44 231518799", email: "evan.e@goomail.com", address: "5 Riverside Rd. SWX 5XY"),
    Contact(imageName: "FrancescaF", name: "Francesca F", phone: "+44 555518799", email: "fran.f@goomail.com", address: "6 Sunny Rd. SWX 6YY")
    
    ]
