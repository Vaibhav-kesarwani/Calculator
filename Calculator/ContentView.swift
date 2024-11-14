//
//  ContentView.swift
//  Calculator
//
//  Created by Vaibhav Kesarwani on 14/11/24.
//

import SwiftUI

enum CalcButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case substract = "-"
    case divide = "/"
    case multiply = "*"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
}

struct ContentView: View {
    let buttons: [[CalcButton]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .substract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal],
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
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .bold()
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
    
    func buttonWidth(item: ClacButton) -> CGFloat {
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
}

#Preview {
    ContentView()
}
