//
//  ContentView.swift
//  dropDownMenu
//
//  Created by Mon P. on 13/09/2025.
//

import SwiftUI

//MARK: - Dropdown Menu Modifier

extension View {
    //Overlays a dropdown menu on top of the current view.
    // -Parameter
    // -configuration: Binding to he dropdown
    //-option: An array of Strong representing the dropdown options
    // -Return: A view with the dropdown menu overlay
    
    @ViewBuilder
    func dropdownMenuOverlay(_ configuration: Binding<DropdownConfiguration>, options: [String]) -> some View {
        self.overlay {
            if configuration.wrappedValue.isVisible {
                DropdownListView(options: option, configuration: configuration)
                    .transition(.identity)
            }
        }
    }
}


//MARK: - Dropdown List View
//A view that renders the list of dropdown options.
fileprivate struct DropdownListView: View {
    
    var options: [String]
    @Binding var configuration: DropdownConfiguration
    
    //Tracks the currently selected time (while the dropdown is open).
    @State private var currentSelection: String?
    
    var body: some View {
        let menuHeight = configuration.menuHeight
        //Determines whether the dropdown should appear below or above the anchor view
        let isDropdownBelow = configuration.position == .down
        
        ScrollView(.vertical){
            LazyVStack(spacing: 0) {
                //Display the currently active option as the first row
                OptionRowView(configuration.activeOption)
                    .id(configuration.activeOption)
                
                //Display the rest of the options (excluding the active one).
                ForEach(filteredOption, id: \.self) {option in
                    OptionRowView(option)
                }
            }
            .scrollTargetLayout()
            .safeAreaPadding(.bottom, menuHeight - configuration.anchorRect.height)
        }
        .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
        .scrollPosition(id: $currentSelection, anchor: .top)
        .scrollIndicators(.hidden)
        .frame(width: configuration.anchorRect.width, height: menuHeight)
        .background(Color(.systemBackground))
        .mask(alignment: .top) {
            //Mark the dropdown to smoothly animate its
            Rectangle()
                .frame(
                    height: configuration.isContentExpanded ? menuHeight : configuration.anchorRec.height,
                    alignment: .top
                )
        }
        .overlay(alignment: .topTrailing){
            //The chevron indicator rotates to indicae dropdown status
            Image(systemName: "chevron.down")
                .rotationEffect(.init(degrees: configuration.isContentExpanded ? 180 : 0))
                .padding(.trailing, configuration.padding.trailing)
                .frame(height: configuration.position == .up ? -1 : 1)
            //Flip vertically if the dropdown is positioned above
                .scaleEffect(y: configuration.position == .up ? -1 : 1)
        }
            //Flip the entire view vertically if the dropdown is above the anchor
                .scaleEffect(y: configuration.position == .up ? -1 : 1)
                .clipShape(RoundedRectangle(cornerRadius: configuration.cornerRadius))
                .offset(
                    x: configuration.anchorRect.minX,
                    y: configuration.anchorRect.minY - (isDropdownBelow ? 0: (menuHeight - configuration.anchorRect.height))
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .background {
                    //Ultra-thin material
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .reverseMask(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: configuration.cornerRadius)
                                .frame(
                                    width: configuration.anchorRect.width,
                                    height: configuration.isContentExpanded ? menuHeight: configuration.anchorRect.height
                                )
                                .frame(maxHeight: menuHeight, alignment: isDropdownBelow ? .top: .bottom)
                                .offset(
                                    x: configuration.anchorRect.minX,
                                    y: configuration.anchorRect.minY - (isDropdownBelow ? 0 : (menuHeight - configuration.anchorRect.height))
                                )
                        }
                        .opacity(configuration.isContentExpanded ? 1 : 0)
                        .onTapGesture {
                            //Dismiss the dropdown if the background is tapped
                            dismissDropdown(with: currentSelection ?? configuration.activeOption)
                        }
                }
                .ignoresSafeArea()
                .onAppear {
                    
                }
        
        //7:48/19:55
                            
                            
                            
                            
                        }
                
            
                
            
            //7:22/19.55
            
            
        
        
        
        
        
        
        
        
        
            
            
            
        }
        
        
        
        
    }
    
   
}








//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}
