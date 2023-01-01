//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 01/01/2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @State var currentUserName: String?
    @AppStorage("name") var currentuserName: String?
    
    var body: some View {
        VStack (spacing: 20) {
            Text( currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                
                let name: String = "Emily"
                currentUserName = name
                UserDefaults.standard.set(name, forKey:"Emily")
            }
            
        }
        
        .onAppear {
            currentUserName = UserDefaults.standard.string(forKey:"name")
            
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
