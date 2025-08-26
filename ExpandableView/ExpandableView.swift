//
//  ExpandablevView.swift
//  ExpandView
//
//  Created by Mon P. on 25/08/2025.
//

import SwiftUI

struct ExpandablevView: View {
    @Namespace private var namespace
    @State private var show = false
    
    var body: some View {
        ZStack {
            if !show {
                thumbnailView()
            } else {
                expandedView()
            }
        }
        .onTapGesture {
            if !show {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)){
                    show.toggle()
                    
                }
                
            }
        }
    }
    
    @ViewBuilder
    private func thumbnailView() -> some View {
        
    }
    
    @ViewBuilder
    private func expandedView() -> some View {
        
        
    }
    
    
}

#Preview {
    ExpandablevView()
}


