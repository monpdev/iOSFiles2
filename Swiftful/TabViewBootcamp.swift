//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 20/12/2022.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill","globe", "house.fill","person.fill"
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id:\.self) {icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.purple]), center: .center, startRadius: 5, endRadius: 300)
        
        )
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
        
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.purple)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
       
        
        
//        TabView (selection: $selectedTab) {
//            HomeView(selectTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BROWSE TAB")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("PROFILE TAB")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//            }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                })
            }
        }
    }
}
