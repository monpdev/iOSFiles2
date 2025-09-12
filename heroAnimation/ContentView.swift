//
//  ContentView.swift
//  heroAnimation
//
//  Created by Mon P. on 01/09/2025.
//

import SwiftUI

//MARK: -Sample Data
struct CardData: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    let imageName: String
    let detailText: String
    
}

//MARK: -ContentView

struct ContentView: View {
    var body: some View {
        CardsListView()
    }
}


//MARK: -CardsListView
struct CardsListView: View {
    @Namespace private var namespace
    
    //sample card data
    
    @State private var cards: [CardData] = [
        CardData(title: "SwiftUI Intro", color: .blue, imageName: "scribble", detailText: "1.Lorem ipsum dolor sit amet. Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco."),
        CardData(title: "Combine", color: .red, imageName: "rectangle.grid.2x2.fill", detailText: "2.Lorem ipsum dolor sit amet. Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco."),
        CardData(title: "Matched Geometry", color: .green, imageName: "arrow.left.and.right", detailText: "3.Lorem ipsum dolor sit amet. Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco."),
        CardData(title: "Async", color: .orange, imageName: "clock.badge.checkmark.fill", detailText: "4.Lorem ipsum dolor sit amet Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco.")
    ]
    
    //Now Review the code at 1:34
    
    //Track which card is selectedod
    @State private var selectedCard: CardData? = nil
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(cards) { card in
                        CardRowView(card: card,
                                    namespace: namespace)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                                selectedCard = card
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Card Animations")
            .overlay {
                if let card = selectedCard {
                    //Detail view
                    DetailView(card: card,
                               namespace: namespace,
                               onDismiss: {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                            selectedCard = nil
                            
                        }
                    })
                }
            }
        }
    }
}


//MARK: - CardRowView
//A small card row view to display in the list.

struct CardRowView: View {
    let card: CardData
    let namespace: Namespace.ID
    
    var body: some View {
        HStack {
            //Image
            Image(systemName: card.imageName)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .matchedGeometryEffect(id: "image-\(card.id)", in: namespace)
                .padding(.leading, 16)
            
            
            //Title
            Text(card.title)
                .font(.headline)
                .foregroundColor(.white)
                .matchedGeometryEffect(id: "title-\(card.id)", in: namespace)
                .padding(.leading, 8)
            
            Spacer()
        }
        .frame(height: 70)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(card.color)
                .matchedGeometryEffect(id: "background-\(card.id)", in: namespace)
        )
    }
}
    
    

//MARK: -DetailView
//A larger view for the card when selected

struct DetailView: View {
    let card: CardData
    let namespace: Namespace.ID
    let onDismiss: () -> Void
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            //Background
            RoundedRectangle(cornerRadius: 20)
                .fill(card.color)
                .matchedGeometryEffect(id: "background-\(card.id)", in: namespace)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                HStack {
                    //Image
                    Image(systemName: card.imageName)
                        .font(.system(size: 60, weight: .bold))
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "image-\(card.id)", in: namespace)
                    
                    Spacer()
                }
                .padding(.top, 60)
                .padding(.horizontal, 20)
                
                //Title
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .matchedGeometryEffect(id: "title-\(card.id)", in: namespace)
                    .padding(.horizontal, 20)
                
                //Extra text or content
                VStack(alignment: .leading, spacing: 16) {
                    Text("Detailed Information")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.9))
                    
                    Text(card.detailText)
                        .foregroundColor(.white.opacity(0.9))
                    
                    Text("2 Lorem ipsum dolor sit amet. Consectetur adipiscing elit, sed do eiusmod")
                        .foregroundColor(.white.opacity(0.8))
                    
                }
                .padding(20)
                
                Spacer()
            }
            //Close Button
            Button {
                onDismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 35))
                    .foregroundColor(.white.opacity(0.8))
                    .padding()
            }
        }
        .transition(.opacity)
    }
}
                
                
#Preview {
    ContentView()
}
