//
//  ContentView.swift
//  Calculator
//
//  Created by Vaibhav Kesarwani on 14/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                // Text display
                HStack {
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 64))
                        .foregroundColor(.white)
                }
                .padding()
                
                
                // Our buttons
                
            }
        }
    }
}

#Preview {
    ContentView()
}
