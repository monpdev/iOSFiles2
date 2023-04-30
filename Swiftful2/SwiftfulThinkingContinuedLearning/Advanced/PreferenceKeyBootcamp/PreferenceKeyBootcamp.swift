//
//  PreferenceKeyBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 26/04/2023.
//

import SwiftUI

struct PreferenceKeyBootcamp: View {
    
    @State private var text: String = "Hello, world!"
    
    var body: some View {
        NavigationView {
            VStack {
                SecondaryScreen(text: text)
                    .navigationTitle("Navigation Title")
                  //  .customTitle("New Value!!!")
            }
        }
        .onPreferenceChange(CustomTitlePreferenceKey.self, perform: {
            value in
            self.text = value
        })
    }
}


extension View {
    
    func customTitle(_ text: String) -> some View {
        
        self
            .preference(key: CustomTitlePreferenceKey.self, value: text)
        
    }
}


struct PreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyBootcamp()
    }
}



struct SecondaryScreen: View {
    
    let text: String
    @State private var newValue: String = ""
    
    var body: some View {
        
        Text(text)
            .onAppear(perform: getDataFromDatabase)
            .customTitle(newValue)
        
    }
    
    func getDataFromDatabase() {
        //download
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.newValue = "NEW VALUE FROM DATABASE"
            
        }
    }
}


struct CustomTitlePreferenceKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
    
}





