//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 02/01/2023.
//

import SwiftUI

/*
 case empty -> No image is loaded.
 case success(Image) -> An image successfully loaded.
 case failure(Error) -> An image failed to laod with an error.
 
 */

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
       
        AsyncImage(url: url) { phase in
            switch phase {
                case .empty:
                        ProgressView()
                case .success(let returnedImage):
                        returnedImage
                            .resizable()
                            .scaledToFit()
                            .frame(width:200, height:200)
                            .cornerRadius(30)
                case .failure:
                        Image(systemName: "questionmark")
                            .font(.headline)
                default:
                    Image(systemName: "questionmark")
                    .font(.headline)
                
            }
        }
        
 //First example
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width:200, height:200)
//                .cornerRadius(30)
//        }, placeholder: {
//            ProgressView()
//        })
 
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
