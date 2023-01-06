//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 06/01/2023.
//

import SwiftUI

//List
//TabView

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello,world!")
                .badge("NEW ITEMS")
            
            Text("Hello,world!")
            Text("Hello,world!")
            Text("Hello,world!")
            
        }
        
        //        TabView {
        //            Color.red
        //                .tabItem {
        //                    Image(systemName: "heart.fill")
        //                    Text("Hello")
        //                }
        //                .badge(2)
        //
        //            Color.green
        //                .tabItem {
        //                    Image(systemName: "heart.fill")
        //                    Text("Hello")
        //                }
        //
        //            Color.blue
        //                .tabItem {
        //                    Image(systemName: "heart.fill")
        //                    Text("Hello")
        //                }
        //        }
        
        
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
