//
//  ContentView.swift
//  CarouselTab
//
//  Created by Mon P. on 01/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color.red, Color.blue]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    var body: some View {
        NavigationView {
            //Add a background
            ZStack {
                
                backgroundGradient
                    .ignoresSafeArea()
                
                TabView {
                    //1st
                    NavigationLink(destination: DetailView()) {
                        VStack {
                            Image("monster1")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .shadow(color: .gray, radius: 4, y:15)
                                .padding(45)
                                .background(.thinMaterial)
                                .cornerRadius(20)
                                .offset(y: -50)
                            Text("Here is Monster 1")
                                .foregroundStyle(.white)
                        }
                    }
                    .navigationBarTitle("Monster 1")
                    
                    //2nd
                    NavigationLink(destination: DetailView()) {
                        VStack {
                            Image("monster2")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .shadow(color: .gray, radius: 4, y:15)
                                .padding(45)
                                .background(.thinMaterial)
                                .cornerRadius(20)
                                .offset(y: -50)
                            Text("Here is Monster 2")
                                .foregroundStyle(.white)
                        }
                    }
                    .navigationBarTitle("Monster 2")
                    
                    
                    
                    //3rd
                    NavigationLink(destination: DetailView()) {
                        VStack {
                            Image("monster3")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .shadow(color: .gray, radius: 4, y:15)
                                .padding(45)
                                .background(.thinMaterial)
                                .cornerRadius(20)
                                .offset(y: -50)
                            Text("Here is Monster 3")
                                .foregroundStyle(.white)
                        }
                    }
                    .navigationBarTitle("Monster 3")
                    
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}



#Preview {
    ContentView()
}



