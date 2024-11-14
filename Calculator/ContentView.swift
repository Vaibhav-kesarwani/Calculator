//
//  ContentView.swift
//  Calculator
//
//  Created by Vaibhav Kesarwani on 14/11/24.
//

import SwiftUI

enum CalcButton: String {
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
    let buttons: [[CalcButton]] = [
        [.seven, .eight, .nine]
    ]
    
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
                ForEach(buttons, id: \.self) { row in
                    ForEach(row, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                            Text(item.rawValue)
                                .frame(width: 70, height: 70)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .foregroundColor(.white)
                                .cornerRadius(35)
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
