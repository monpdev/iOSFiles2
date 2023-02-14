//
//  MultipleSheetsBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 14/02/2023.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    
}


struct MultipleSheetsBootcamp: View {
    
    @State var selectedModel: RandomModel? = nil
   
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<50) {index in
                    Button("Button \(index)") {
                        selectedModel = RandomModel(title: "This is sheet number \(index)")
                    }
                }
            }
            .sheet(item: $selectedModel) {model in
                NextScreen(selectedModel: model)
            }
        }
    }
}
        



struct NextScreen: View {
    
   let selectedModel: RandomModel
    
    var body: some View {
        
        Text(selectedModel.title)
            .font(.largeTitle)
        
    }
    
}


struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}




// EXTRA INFO
//Button("Button 1") {
//    selectedModel = RandomModel(title: "ONE")
//
//}
//
//Button("Button 2") {
//    selectedModel = RandomModel(title: "ONE")
//
//}
//}
//sheet(item: $selectedModel) {model in
//NextScreen(selectedModel: model)
//}
//

//        VStack(spacing: 20) {
//            Button("Button 1") {
//              //  selectedModel = RandomModel(title: "ONE")
//                showSheet.toggle()
//            }
//            .sheet(isPresented: $showSheet, content: {
//                NextScreen(selectedModel: RandomModel(title: "ONE"))
//            })
//
//
//            Button("Button 2") {
//              //  selectedModel = RandomModel(title: "TWO")
//                showSheet2.toggle()
//            }
//            .sheet(isPresented:$showSheet2  , content:  {
//                NextScreen(selectedModel: RandomModel(title: "TWO"))
//            })
//
//        }

//        .sheet(isPresented: $showSheet, content: {
//            NextScreen(selectedModel: selectedModel)
//        })
 
        
        
        
