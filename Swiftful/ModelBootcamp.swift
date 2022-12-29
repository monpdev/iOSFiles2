//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 28/12/2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        //"Nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "emily123", followerCount: 150, isVerified: false),
        UserModel(displayName: "Samantha", userName: "samantha123", followerCount: 321, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris2022", followerCount: 555, isVerified: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) {user in
                    HStack(spacing:15.0){
                        Circle()
                            .frame(width: 40, height:40)
                        VStack{
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                      
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                       
                    }
                    .padding(.vertical, 10)
                  
                }
                                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
