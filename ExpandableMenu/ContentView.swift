//
//  ContentView.swift
//  ExpandableMenu
//
//  Created by Mon P. on 08/10/2025.
//

import SwiftUI

struct ContentView: View {
    let items = DirectoryData.items
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Outline View")) {
                    ForEach(items) {item in
                        DisclosureGroup("\(Image(item.icon)) \(item.name)"){
                            OutlineGroup(item.children ?? [Directory](), children:\.children){child in
                                if child.children == nil {
                                    NavigationLink(destination: Text(child.name)) {
                                        Image(systemName: child.icon)
                                        Text(child.name)
                                    }
                                  }
                                else {
                                    Label(child.name, systemImage: child.icon)
                                
                                }
                            }
                        }
                    }
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Expandable Menu")
        }
    }
}

#Preview {
    ContentView()
}




