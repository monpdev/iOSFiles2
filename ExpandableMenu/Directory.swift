//  Directory.swift



import SwiftUI

struct Directory: Identifiable {
    var id = UUID()
    let name: String
    let icon: String
    var children: [Directory]?
    init(name:String, icon: String, children: [Directory]? = nil){
        self.name = name
        self.icon = icon
        self.children = children
    
    }
}
