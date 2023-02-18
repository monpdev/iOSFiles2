//
//  ArraysBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 17/02/2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String?
    let points: Int
    let isVerified: Bool

}


class ArrayModificationViewModel: ObservableObject {
    
    @Published var dataArray: [UserModel] = []
    @Published var filteredArray: [UserModel] = []
    @Published var mappedArray: [String] = []
    
    init() {
        getUsers()
        updateFilteredArray()
        
    }
    
    
    
    func updateFilteredArray() {
        
        
        //sort
        /*
         //        filteredArray  = dataArray.sorted {(user1, user2) -> Bool in
         //            return user1.points < user2.points
         //        }
         
         //Sorter way to filter
         filteredArray = dataArray.sorted(by: {$0.points > $1.points})
         */
        
        
        //filter
        /*
         //        filteredArray = dataArray.filter({(user) -> Bool in
         //           // return user.points < 50
         //            //return user.isVerified
         //            return user.name.contains("i")
         //        })
         //shorter way
         filteredArray = dataArray.filter({$0.isVerified})
         */
        
        
        //map
        /*
         //                mappedArray = dataArray.map({ (user) -> String in
         //                    return user.name ?? "ERROR"
         //                })
         
         //Shorter form
         //  mappedArray = dataArray.map({$0.name})
         
         mappedArray = dataArray.compactMap({(user) -> String? in
         return user.name
         })
         
         mappedArray = dataArray.compactMap({$0.name})
         */
    
        
        mappedArray = dataArray
            .sorted(by: {$0.points > $1.points})
            .filter({$0.isVerified})
            .compactMap({$0.name})
            
        
            
        
        
    }
    
    func getUsers() {
        let user1 = UserModel(name: "Adam", points: 50, isVerified: true)
        let user2 = UserModel(name: "Brad", points: 15, isVerified: false)
        let user3 = UserModel(name: nil, points: 25, isVerified: true)
        let user4 = UserModel(name: "Donald", points: 35, isVerified: true)
        let user5 = UserModel(name: "Eve", points: 55, isVerified: false)
        let user6 = UserModel(name: "Felix", points: 65, isVerified: true)
        let user7 = UserModel(name: "Gordon", points: 75, isVerified: false)
        let user8 = UserModel(name: nil, points: 53, isVerified: true)
        let user9 = UserModel(name: "Irene", points: 54, isVerified: false)
        let user10 = UserModel(name: "Jack", points: 100, isVerified: true)
        self.dataArray.append(contentsOf: [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6,
            user7,
            user8,
            user9,
            user10,
        
        ])
    }
}


struct ArraysBootcamp: View {
    
    @StateObject var vm = ArrayModificationViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(vm.mappedArray, id:\.self) {name in
                    Text(name)
                        .font(.title)
                    
                }
                
                
                
//
//                ForEach(vm.filteredArray) {user in
//                    VStack (alignment: .leading){
//                        Text(user.name)
//                            .font(.headline)
//                        HStack {
//                            Text("Points:\(user.points)")
//                            Spacer()
//                            if user.isVerified {
//                                Image(systemName: "flame.fill")
//
//                            }
//                        }
//                    }
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue.cornerRadius(10))
//                    .padding(.horizontal)
//                }
                
                
            }
        }
    }
}

struct ArraysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ArraysBootcamp()
    }
}
