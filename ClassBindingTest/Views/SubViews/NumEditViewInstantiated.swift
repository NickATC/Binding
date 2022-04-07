//
//  NumEditViewInstantiated.swift
//  ClassBindingTest
//
//  Created by NICOLAS  TAUTIVA on 7/04/22.
//

import SwiftUI

struct NumEditViewInstantiated: View {
    @Binding var num2: String   //@Binding works with a Class??????
    //@ObservedObject var num: String //  Creates error... doesn't work.

    var body: some View {
        //
        VStack {
            Text("Edit number and return to see effect")
            
            TextField("", text: $num2)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        
}
}
