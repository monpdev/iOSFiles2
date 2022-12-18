//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 16/12/2022.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes:[NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection,
               label: Text("Picker"),
               content: {
            ForEach(filterOptions.indices) {index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        })
            .pickerStyle(SegmentedPickerStyle())
     //       .background(Color.red)
               
        
        
        
        
        
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
//                    Text("Picker")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: Color.blue.opacity(0.3), radius: 10, x:0, y:0)
//                ,
//            content: {
//                ForEach(filterOptions, id:\.self) {option in
//
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                        .tag(option)
//                }
//
//            })
//                .pickerStyle(MenuPickerStyle())
//
        
        
        //        VStack {
        //
        //            HStack {
        //                Text("Age:")
        //                Text(selection)
        //            }
        //
        //
        //            Picker(
        //                selection: $selection,
        //                label: Text("Picker"),
        //                content: {
        //                    ForEach(18 ..< 100) { number in
        //                        Text("\(number)")
        //                            .font(.headline)
        //                            .foregroundColor(.red)
        //                            .tag("\(number)")
        //                    }
        //            })
        //           // .background(Color.gray.opacity(0.3))
        //        }
        
        
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
