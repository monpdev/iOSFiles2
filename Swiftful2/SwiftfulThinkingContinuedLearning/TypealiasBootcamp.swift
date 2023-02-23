//
//  TypealiasBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 23/02/2023.
//

import SwiftUI

struct MovieModel {
    let title: String
    let director: String
    let count: Int
    
}

typealias TVModel = MovieModel

struct TypealiasBootcamp: View {
    
  //  @State var item: MovieModel = MovieModel(title: "This is Hollywood", director: "Joe", count: 5)
    
    @State var item: TVModel = TVModel(title: "TV Title", director: "Kate", count: 100)
    
    var body: some View {
        VStack {
            Text(item.title)
            Text(item.director)
            Text("\(item.count)")
        }
    }
}

struct TypealiasBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TypealiasBootcamp()
    }
}
