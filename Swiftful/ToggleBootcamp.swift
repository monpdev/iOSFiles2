//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 16/12/2022.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                Text("Label")
            })
            
            .toggleStyle(SwitchToggleStyle(tint: Color.green))
            
            Spacer()
        }
        
        .padding(.horizontal, 100)
       
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
