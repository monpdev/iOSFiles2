//
//  ifLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 26/12/2022.
//

import SwiftUI

struct ifLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "test123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                //Do not use ! Ever!!!!
//                Text(displayText!)
//                    .font(.title)
                //Do not force unwrap values
                
                if isLoading {
                    ProgressView()
                }
               
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
             displayText = "Error. There is no user ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
            
        }
        
    }
}

struct ifLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ifLetGuardBootcamp()
    }
}
