//
//  ContentView.swift
//  CityCarousel
//
//  Created by Mon P. on 17/08/2025.
//
// card.name and .details still not working properly.

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

#Preview {
    ContentView()
}


struct Home: View {
    
    @State var x : CGFloat = 0
    @State var count : CGFloat = 0
    @State var screen = UIScreen.main.bounds.width - 30
    
    @State var data = [
        
        Card(id: 0, img: "paris",  name: "Paris", details: "Paris is the capital and most populous city of France, located in the north-central part of the country on the Seine River. It\'s renowned as a global center for art, fashion, gastronomy, and culture. Key landmarks include the Eiffel Tower, the Louvre Museum, and the Champs-Élysées", show: false),
            
        Card(id: 1, img: "newyork", name: "New York", details: "New York City, located in the state of New York, is the most populous city in the United States. It\'s a global hub for finance, media, art, fashion, and culture, known for its iconic skyline, diverse population, and vibrant atmosphere. The city is comprised of five boroughs: Manhattan, Brooklyn, the Bronx, Queens, and Staten Island.", show: false),
            
        Card(id: 2, img: "amsterdam", name: "Amsterdam", details: "Amsterdam is the capital of the Netherlands, renowned for its picturesque canals, historic architecture, and vibrant cultural scene. It's famous for its liberal atmosphere, numerous museums, and the unique experience of navigating its canal system",show: false),
            
        Card(id: 3, img: "melbourne", name: "Melbourne", details: "Known for its vibrant arts scene, stylish shopping, and diverse culinary experiences, Melbourne is consistently ranked as one of the world \'s most livable cities. The city is situated on the Yarra River and Port Phillip Bay, offering a mix of urban attractions and natural beauty",show: false),
            
        Card(id: 4, img: "tokyo", name: "Tokyo", details: "Tokyo, Japan, is a vibrant, modern metropolis and the nation's capital. It blends traditional culture with cutting-edge technology and fashion. As the world \'s most populous metropolitan area, it\'s a hub of political, economic, and cultural activity.",show: false),
        
        Card(id: 5, img: "rio", name: "Rio de Janeiro", details: "Rio de Janeiro, Brazil, renowned for its stunning natural beauty, vibrant culture, and iconic landmarks like Christ the Redeemer and Sugarloaf Mountain. It boasts world-famous beaches like Copacabana and Ipanema, and its annual Carnival celebration is a global spectacle",show: false),
        
        Card(id: 6, img: "beijing", name: "Beijing", details: "Beijing is the capital city of China, a sprawling metropolis with over 22 million residents. It's a major political, cultural, and educational center, boasting a rich history and numerous iconic landmarks like the Forbidden City and the Great Wall.",show: false)
            
        ]

    
    var body: some View {
        
        NavigationView{
            VStack {
                Spacer()
                
                HStack (spacing: 15) {
                    
                    ForEach(data) {i in
                        CardView(data: i)
                            .offset(x: self.x)
                            .highPriorityGesture(DragGesture()
                                .onChanged({(value) in
                                    
                                    if value.translation.width > 0 {
                                        
                                        self.x = value.location.x
                                        
                                    }
                                    else {
                                        
                                        self.x = value.location.x + self.screen
                                        
                                    }
                                })
                                    .onEnded({(value) in
                                        if value.translation.width > 0 {
                                            
                                            if value.translation.width > ((screen - 80)/2) && Int(self.count) != self.getMid() {
                                                
                                                self.count += 1
                                                self.updateHeight(value: Int(self.count))
                                                self.x = (self.screen + 15)*self.count
                                                
                                            }
                                            else {
                                                
                                                self.x = (self.screen + 15)*self.count
                                            }
                                        }
                                            
                                        else {
                                            
                                            if -value.translation.width > ((screen - 80)/2) && -Int(self.count) != self.getMid() {
                                                
                                                self.count -= 1
                                                self.updateHeight(value: Int(self.count))
                                                self.x = (self.screen + 15)*self.count

                                        }
                                            else {
                                                
                                                self.x = (self.screen + 15)*self.count
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                Spacer()
            }
            .background(Color.black.opacity(0.07)).edgesIgnoringSafeArea(.all)
            .navigationTitle("Cities of the World")
            .animation(.spring())
            .onAppear {
                
                self.data[self.getMid()].show = true
                
            }
        }
        
    }
    
    func getMid()-> Int {
        
        return data.count / 2
        
    }
    
    func updateHeight(value : Int) {
        
        var id : Int
        
        if value < 0 {
            id = -value + getMid()
        }
        else {
            
            id = getMid() - value
        }
        
        for i in 0..<data.count {
            
            data[i].show = false
        }
        
        data[id].show = true
        
    }
    
}


struct CardView : View {
    
    var data: Card
    var body : some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Image(data.img)
            .resizable()
            .frame(width:UIScreen.main.bounds.width - 30, height: data.show ? 460 : 400)
                
            Text(data.name)
                .fontWeight(.bold)
                .padding(.vertical, 13)
                .padding(.leading)
            
        }.background(Color.white)
        .cornerRadius(25)
        
    }
    
}


struct Card : Identifiable {
    
    var id : Int
    var img : String
    var name : String
    var details : String
    var show : Bool
    
    
}





