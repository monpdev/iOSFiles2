//
//  ContentView.swift
//  ContactList
//
//  Created by Mon P. on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(contacts){ contact in
            ContentRow(contact: contact)
        
        }
    }
}

#Preview {
    ContentView()
}




struct ContentRow: View {
    
    let contact: Contact
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .clipped()
                .cornerRadius(50)
            VStack (alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
            }
        }
    }
}


