//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 16/12/2022.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 300)
                  //  .foregroundColor(.red)
                   // .background(Color.red)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
           // .background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
