//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 21/11/2022.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
                
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
            })
            
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
//
            .sheet(isPresented: $showSheet , content: {
                //DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            })
    
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
               
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    //.background(Color.white.cornerRadius(10))
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
       // SheetsBootcamp()
        SecondScreen()
    }
}