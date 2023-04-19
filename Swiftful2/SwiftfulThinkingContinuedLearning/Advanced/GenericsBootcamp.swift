//
//  GenericsBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 15/04/2023.
//

import SwiftUI

struct StringModel{
    let info: String?
    
    func removeInfo() -> StringModel {
       StringModel(info: nil)
    }
}

struct BoolModel{
    let info: Bool?
    
    func removeInfo() -> BoolModel {
       BoolModel(info: nil)
    }
}

struct GenericModel<T> {
    let info: T?
    func removeInfo() -> GenericModel {
        GenericModel(info: nil)
    }
}


class GenericsViewModel: ObservableObject {
    @Published var stringModel = StringModel(info: "Hello, world!")
    @Published var boolModel = BoolModel(info: true)
    
    @Published var genericStringModel = GenericModel(info: "Hello, world!")
    @Published var genericBoolModel = GenericModel(info: true)
    
    func removeData() {
        stringModel = stringModel.removeInfo()
        boolModel = boolModel.removeInfo()
        genericStringModel = genericStringModel.removeInfo()
        genericBoolModel = genericBoolModel.removeInfo()
    }
}

struct GenericView<CustomType: View>: View {
    
    let content: CustomType
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
            content
        }
    }
}


struct GenericsBootcamp: View {
    
    @StateObject private var vm = GenericsViewModel()
    
    var body: some View {
        VStack {
            GenericView(content: Text("custom content"), title: "new view!")
           // GenericView(title: "New view!")
            
            Text(vm.stringModel.info ?? "no data")
            Text(vm.boolModel.info?.description ?? "no data")
            Text(vm.genericStringModel.info ?? "no data")
            Text(vm.genericBoolModel.info?.description ?? "no data")
        }
        .onTapGesture {
            vm.removeData()
        }
        
    }
}



struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}





//11.26 .. 19.23

//extra info
//class GenericsViewModel: ObservableObject {
//    @Published var dataArray: [Bool] = []
//
//    init() {
//        dataArray = [true,false,true]
//    }
//
//    func removeDataFromDataArray() {
//
//        dataArray.removeAll()
//        dataArray.append(<#T##newElement: Bool##Bool#>)
//    }
//
//}
