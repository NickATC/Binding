//
//  ContentView.swift
//  ClassBindingTest
//
//  Created by NICOLAS  TAUTIVA on 7/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var numInstance = Number()
    @StateObject var numAssignedWithInstance = NoNumberAssigned(num: "456")
    
    
    var body: some View {
        //
        NavigationView {
            VStack (spacing: 25) {

                Text("\(numInstance.num)")
                
                NavigationLink {
                    NumEditView(num1: $numInstance.num)
                } label: {
                    Text("Click here to edit number that is inside Class")
                }
                
                Divider()
                
                Text("\(numAssignedWithInstance.num)")
                
                NavigationLink {
                    //NumEditView(num: $numAssignedWithInstance.num)
                    NumEditViewInstantiated(num2: $numAssignedWithInstance.num)
                } label: {
                    Text("Click here to edit number assigned when instatiated ")
                }
            }
        }
        
        //
    }
}

class Number: ObservableObject {
    @Published var num = "123"
}

class NoNumberAssigned: ObservableObject {
    @Published var num: String
    
    init(num: String) {
        self.num = num
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
