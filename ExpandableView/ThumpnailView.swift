//
//  ThumpnailView.swift
//  ExpandView
//
//  Created by Mon P. on 27/08/2025.
//

import SwiftUI

struct ThumpnailView: View, Identifiable {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}
