//
//  HashableBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 17/02/2023.
//

import SwiftUI

//struct MyCustomModel: Identifiable {
//    let id = UUID().uuidString
//    let title: String
//
//}

struct MyCustomModel: Hashable {
    let title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
    
}


struct HashableBootcamp: View {
    
    let data: [MyCustomModel] = [
        MyCustomModel(title: "ONE"),
        MyCustomModel(title: "TWO"),
        MyCustomModel(title: "THREE"),
        MyCustomModel(title: "FOUR"),
        MyCustomModel(title: "FIVE"),
    ]
    
    var body: some View {
        ScrollView {
            VStack (spacing: 40) {
                    ForEach(data, id: \.self) {item in
                        Text(item.hashValue.description)
                            .font(.headline)
                }
            }
        }
    }
}



struct HashableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HashableBootcamp()
    }
}






//Extra information
//                ForEach(data) { item in
//                    Text(item.id)
//                        .font(.headline)
//                }
//
