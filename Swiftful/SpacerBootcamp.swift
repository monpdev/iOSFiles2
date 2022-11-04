//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 03/11/2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack{
            HStack (spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
          //  .background(Color.yellow)
            .padding(.horizontal)
          //  .background(Color.blue)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
        
        //.background(Color.yellow)
    }
}

//            Spacer(minLength: nil)
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//


struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
