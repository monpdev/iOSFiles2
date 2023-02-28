//
//  TimerBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 27/02/2023.
//

import SwiftUI

struct TimerBootcamp: View {
    
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    
    @State var currentDate: Date = Date()
    
    //Current Time
    /*
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
     */
    
    //Countdown
    /*
    @State var count: Int = 10
    @State var finishedText: String? = nil
     */
    
    
    //Count down to date
    /*
    @State var timeRemaining: String = ""
    let futureDate: Date = Calendar.current.date(byAdding: .hour, value: 1, to: Date()) ?? Date()

    func updateTimeRemaining() {
        let remaining = Calendar.current.dateComponents([.minute, .second], from: Date(), to:futureDate)
       // let hour = remaining.hour ?? 0
        let minute = remaining.minute ?? 0
        let second = remaining.second ?? 0
        timeRemaining = "\(minute) minutes, \(second) seconds"
    }
    */
    
    //Animation counter
    @State var count: Int = 1
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
                    .ignoresSafeArea()
            
            TabView(selection: $count,
                    content: {
                        Rectangle()
                            .foregroundColor(.red)
                            .tag(1)
                        Rectangle()
                            .foregroundColor(.blue)
                            .tag(2)
                        Rectangle()
                            .foregroundColor(.green)
                            .tag(3)
                        Rectangle()
                            .foregroundColor(.orange)
                            .tag(4)
                        Rectangle()
                            .foregroundColor(.pink)
                            .tag(5)
                    })
            .frame(height: 200)
            .tabViewStyle(PageTabViewStyle())
        }
        .onReceive(timer, perform: {_ in
            withAnimation(.default) {
                count = count == 5 ? 1 : count + 1
                
            }
           
            
        })
    }
}

struct TimerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp()
    }
}







//Additional information
//Current time
//Text(dateFormatter.string(from: currentDate))

//currentDate = value
//            if count < 1 {
//                finishedText = "Wow!"
//            } else {
//                count -= 1
//            }

//            Text(timeRemaining)
//                .font(.system(size: 100, weight: .semibold, design: .rounded))
//                .foregroundColor(.white)
//                .lineLimit(1)
//                .minimumScaleFactor(0.1)


//            if count == 3 {
//                count = 0
//            } else {
//                count += 1


//            HStack (spacing: 15) {
//                Circle()
//                    .offset(y: count == 1 ? -20 : 0)
//                Circle()
//                    .offset(y: count == 2 ? -20 : 0)
//                Circle()
//                    .offset(y: count == 3 ? -20 : 0)
//            }
//            .frame(width: 150)
//            .foregroundColor(.white)
