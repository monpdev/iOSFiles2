//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mon P. on 30/11/2022.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot", "onion", "coriander"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                    ){
                        ForEach(fruits, id:\.self) {fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.pink)
                        }
                        
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                        //                .onDelete(perform: { indexSet in
                        //                    fruits.remove(atOffsets: indexSet)
                    }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies,id:\.self) {veggies in
                        Text(veggies.capitalized)
                        }
                    }
                
                }
                .accentColor(.purple)
                //.listStyle(DefaultListStyle())
                //.listStyle(InsetGroupedListStyle())
               // .listStyle(SidebarListStyle())
                .navigationTitle("Grocery List")
                .navigationBarItems(leading: EditButton(),trailing: addButton)
            }
        .accentColor(.red)
        }
    
    var addButton : some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("Coconut")
    }
    
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
