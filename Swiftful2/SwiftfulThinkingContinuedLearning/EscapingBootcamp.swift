//
//  EscapingBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Mon P. on 23/02/2023.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    
    @Published var text: String = "Hello"
    
    
    func getData() {
        
        downloadData5 { [weak self](returnedResult) in
            self?.text = returnedResult.data
        }
        
        //        downloadData3 {[weak self](returnedData) in
        //            self?.text = returnedData
        //        }
    }
    
    func downloadData() -> String {
        return "New data!"
    }
    
    func downloadData2(completionHandler:  (_ data: String) -> ()) {
        
        completionHandler("New data!")
    }
    
    
    func downloadData3(completionHandler: @escaping  (_ data: String) -> ()) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completionHandler("New data!")
        }
    }
    
    
    func downloadData4(completionHandler: @escaping  (DownloadResult) -> ()) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New data!")
            completionHandler(result)
        }
    }
    
    
    func downloadData5(completionHandler: @escaping  (DownloadCompletion)) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New data!")
            completionHandler(result)
        }
    }
}


struct DownloadResult {
    let data: String
    
}

typealias DownloadCompletion = (DownloadResult) -> ()


struct EscapingBootcamp: View {
    
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

struct EscapingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EscapingBootcamp()
    }
}




//Additional information
//    func doSomething(_ data: String) -> Void {
//        print(data)
//    }
//
//Another way to write return void
//    func doSomething(_ data: String) -> () {
//        print(data)
//    }
