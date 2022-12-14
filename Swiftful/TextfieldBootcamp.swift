//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 14/12/2022.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
   
        var body: some View {
            
            NavigationView {
                VStack {
                    TextField("Type something here...", text: $textFieldText)
                        //.textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                        .foregroundColor(.red)
                        .font(.headline)
                    
                    Button(action: {
                        if textIsAppropriate () {
                            saveText()
                        }
                    }, label: {
                        Text("Save now".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textIsAppropriate() ? Color.blue: Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.headline)
                })
                    .disabled(!textIsAppropriate())
                    
                    ForEach(dataArray, id: \.self) {data in
                        Text(data)
                    }
                    
                    Spacer()
            }
                .padding()
                .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        //Check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}


struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
