//
//  ExpandedView.swift
//  ExpandView
//
//  Created by Mon P. on 27/08/2025.
//

import SwiftUI

struct ExpandedView: View {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}
