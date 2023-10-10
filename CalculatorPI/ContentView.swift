//
//  ContentView.swift
//  CalculatorPI
//
//  Created by student on 10/10/2023.
//

import SwiftUI

enum CalcButton:String {
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
    case subtract = "-"
    case divide = "/"
    case multiply = "*"
    case sin = "sin"

}

enum Operation{
    case add, subtract, multiply, divide, sin
}

struct ContentView: View {


    @State var output:String = ""
    @State var currentValue:Int
    @State var lastValue:Int
    @State var currentOperation:Operation

    var body: some View {
        VStack{
            
            Spacer()
            Text("KALKULATOR").font(.largeTitle).frame(width:315,height:60)
            Spacer()
            Text(self.output).frame(width:315,height:60)
                .border(Color.black, width: 2)

            HStack{
                            Button(CalcButton.one.rawValue){
                            output += "1"
                            lastValue = Int(output) ?? 0
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle())
                                .border(Color.black, width: 2)
                            Button(CalcButton.two.rawValue){
                            output += "2"
                            lastValue = Int(output) ?? 0
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle())
                                .border(Color.black, width: 2)
                            Button(CalcButton.three.rawValue){
                            output += "3"
                            lastValue =  Int(output) ?? 0
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                        }
            HStack{
                           Button(CalcButton.four.rawValue){
                           output += "4"
                           lastValue = Int(output) ?? 0
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.five.rawValue){
                           output += "5"
                           lastValue = Int(output) ?? 0
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.six.rawValue){
                           output += "6"
                           lastValue = Int(output) ?? 0
                                          }.foregroundColor(.blue)
                                          .frame(width:100,height:60, alignment:.center)
                                          .clipShape(Rectangle()).border(Color.black, width: 2)
                       }
            HStack{
                           Button(CalcButton.seven.rawValue){
                           output += "7"
                           lastValue = Int(output) ?? 0
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.eight.rawValue){
                           output += "8"
                           lastValue =  Int(output) ?? 0
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.nine.rawValue){
                           output += "9"
                           lastValue =  Int(output) ?? 0
                                          }.foregroundColor(.blue)
                                          .frame(width:100,height:60, alignment:.center)
                                          .clipShape(Rectangle()).border(Color.black, width: 2)
                       }
            HStack{
                           Button(CalcButton.zero.rawValue){
                                   output += "0"
                                   lastValue = Int(output) ?? 0

                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                               
                           Button(CalcButton.add.rawValue){
                               currentValue = Int(output) ?? 0
                           self.output = ""
                           currentOperation = Operation.add
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.subtract.rawValue){
                               currentValue = Int(output) ?? 0
                           self.output = ""
                           currentOperation = Operation.subtract
                                          }.foregroundColor(.blue)
                                          .frame(width:100,height:60, alignment:.center)
                                          .clipShape(Rectangle()).border(Color.black, width: 2)
                       }
            HStack{
                           Button(CalcButton.multiply.rawValue){
                               currentValue = Int(output) ?? 0
                           self.output = ""
                           currentOperation = Operation.multiply
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.divide.rawValue){
                               currentValue = Int(output) ?? 0
                           self.output = ""
                           currentOperation = Operation.divide
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.sin.rawValue){
                               currentValue = Int(output) ?? 0
                           self.output = ""
                           currentOperation = Operation.sin
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                        }


            Button("Oblicz"){
            switch currentOperation{
                case Operation.add:
                    self.output = String(Calculations().add(value1: currentValue,value2: lastValue))
                    currentValue = Int(output) ?? 0
                case Operation.subtract:
                    self.output = String(Calculations().subtract(value1: currentValue,value2: lastValue))
                    currentValue = Int(output) ?? 0
                case Operation.divide:
                    let result = Calculations().divide(value1: currentValue,value2: lastValue)
                    if(result != nil){
                        self.output = String(result!)
                        currentValue = Int(output) ?? 0
                       
                    }
                    else{
                        self.output = "Cannot divide by zero"
                    }
                case Operation.multiply:
                    self.output = String(Calculations().multiply(value1: currentValue,value2: lastValue))
                    currentValue = Int(output) ?? 0
                case Operation.sin:
                    self.output = String(Calculations().sinus(value: Double(currentValue)))
                    currentValue = Int(output) ?? 0
           
                
            }
                    }.foregroundColor(.blue)
                    .frame(width:315,height:60, alignment:.center)
                    .clipShape(Rectangle())
                    .border(Color.black, width: 2)
        }
        
    }
    
    
}
