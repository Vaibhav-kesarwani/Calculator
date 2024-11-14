//
//  ContentView.swift
//  Calculator
//
//  Created by Vaibhav Kesarwani on 14/11/24.
//

import SwiftUI

enum CalcButton {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case add
    case substract
    case divide
    case multiply
    case equal
    case decimal
    case percent
    case negative
}

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
