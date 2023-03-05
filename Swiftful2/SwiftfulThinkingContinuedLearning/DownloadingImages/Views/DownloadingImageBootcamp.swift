//
//  DownloadingImageBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 03/03/2023.
//

import SwiftUI

//Codable
//background threads
//weak self
//Combine
//Publishers and Subscribers
//FileManager
//NSCache

struct DownloadingImageBootcamp: View {
    
    @StateObject var vm = DownloadingImagesViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(vm.dataArray) {model in
                    DownloadingImagesRow(model: model)
                }
            }
            .navigationTitle("Downloading Images")
        }
    }
}


struct DownloadingImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImageBootcamp()
    }
}
