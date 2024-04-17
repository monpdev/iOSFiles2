//
//  CustomTabBarContainerView.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Mon P. on 01/05/2023.
//

import SwiftUI



struct CustomTabBarContainerView<Content: View> : View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content:() -> Content) {
        self._selection = selection
        self.content = content()
        
    }
    
    
    var body: some View {
        ZStack (alignment: .bottom){
         
            content
                .ignoresSafeArea()
            
            CustomTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
        
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .home, .favorites, .profile
    ]
    
    
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
    
    
}




//Additional information
//struct TabView2<SelectionValue, Content> : View where SelectionValue:
//    Hashable, Content : View {
//
//}
//
//struct TabView3<SelectionValue: Hashable, Content: View> : View {
//
//}