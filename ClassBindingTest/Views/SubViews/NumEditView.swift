//
//  NumEditView.swift
//  ClassBindingTest
//
//  Created by NICOLAS  TAUTIVA on 7/04/22.
//

import SwiftUI

struct NumEditView: View {
    @Binding var num1: String  //Binding works...  in page 64 it states it does not.
    //@ObservedObject var num: String  //Even if it comes from a class, ObservableObject doesn't work... as stated in page 64
    
    var body: some View {
        //
        VStack {
            Text("Edit number and return to see effect")
            
            TextField("", text: $num1)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        
        //
    }
}

