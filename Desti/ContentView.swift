//
//  ContentView.swift
//Draft
//  Desti
//
//  Created by Mon P. on 15/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

#Preview {
    ContentView()
}

struct Home : View {
    
    @State var data = [
        
            DestiData(id: 0, image: "paris", country: "France", place: "Paris", details: "Paris is the capital and most populous city of France, located in the north-central part of the country on the Seine River. It\'s renowned as a global center for art, fashion, gastronomy, and culture. Key landmarks include the Eiffel Tower, the Louvre Museum, and the Champs-Élysées"),
            
            DestiData(id: 1, image: "newyork", country: "USA", place: "New York", details: "New York City, located in the state of New York, is the most populous city in the United States. It\'s a global hub for finance, media, art, fashion, and culture, known for its iconic skyline, diverse population, and vibrant atmosphere. The city is comprised of five boroughs: Manhattan, Brooklyn, the Bronx, Queens, and Staten Island."),
            
            DestiData(id: 2, image: "amsterdam", country: "The Netherlands", place: "Amsterdam", details: "Amsterdam is the capital of the Netherlands, renowned for its picturesque canals, historic architecture, and vibrant cultural scene. It's famous for its liberal atmosphere, numerous museums, and the unique experience of navigating its canal system"),
            
            DestiData(id: 3, image: "melbourne", country: "Australia", place: "Melbourne", details: "Known for its vibrant arts scene, stylish shopping, and diverse culinary experiences, Melbourne is consistently ranked as one of the world \'s most livable cities. The city is situated on the Yarra River and Port Phillip Bay, offering a mix of urban attractions and natural beauty"),
            
            DestiData(id: 4, image: "tokyo", country: "Japan", place: "Tokyo", details: "Tokyo, Japan, is a vibrant, modern metropolis and the nation's capital. It blends traditional culture with cutting-edge technology and fashion. As the world \'s most populous metropolitan area, it\'s a hub of political, economic, and cultural activity.")
            
        ]
    
    @State var show = false
        
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    
                    Text("Destination")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("1/5")
                        .foregroundColor(.gray)

                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader{ g in
                    
                    HScrollView(data: self.$data, show: self.$show, size: g.frame(in: .global))
                    
                }
                .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0) + 10)
            }
        }
        .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}


//Carousel List
struct HScrollView : View {
    
    @Binding var data : [DestiData]
    //for expanding view
    @Binding var show: Bool
    var size: CGRect
    
    
    var body: some View {
        
        HStack(spacing:0){
            
            ForEach(self.data) {i in
                
                ZStack {
                    
                    Image(i.image)
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                        .frame(width: self.size.width - 30, height: self.size.height)
                        .contentShape(Rectangle())

                }
                //fixed frame for carousel
                .frame(width: self.size.width, height: self.size.height)
            }
        }
    }
}


//struct Casousel: UIViewRepresentable {
//    
//    func makeUIView(context: Context) ->  some UIView {
//        
//
//    }
//    
//}



//sample data

struct DestiData: Identifiable {
    
    var id : Int
    var image : String
    var country: String
    var place : String
    var details : String

}



