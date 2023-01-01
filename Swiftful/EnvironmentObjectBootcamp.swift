//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 31/12/2022.
//

import SwiftUI

//ObservedObject
//StateObject
//EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone","iPad","iMac", "Apple Watch"])
    }
}


struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id:\.self) {item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item, viewModel: viewModel),
                        label: {
                            Text(item)
                    })
                }
            }
            .navigationTitle("iOS Devices")
        }
    }
}

struct DetailView: View {
    
    let selectedItem: String
    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(
                destination: FinalView(),
            label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            })
        }
    }
    
}



struct FinalView:View {
   
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack {
            //background
            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id:\.self) {item in
                        Text(item)
                    }
                    
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                
            }
            
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
       // DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
