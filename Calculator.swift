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
    case add, subtract, multiply, divide, sin}

struct ContentView: View {

//     let buttons: [[CalcButton]] = {
//     [.one, .two, .three],
//     [.four, .five, .six],
//     [.seven, .eight, .nine],
//     [.zero, .add, .subtract],
//     [.multiply, .divide, .sin]}


    @State var output:String = ""
    @State var currentValue:Int
    @State var lastValue:Int
    @State var currentOperation:Operation

    var body: some View {
        VStack{

            Text(self.output).frame(width:315,height:60)
                .border(Color.black, width: 2)

//             ForEach(buttons, id: \.self) {row in
//                 ForEach(row, id: \.self){ item in
//                     CustomButton(text:item.rawValue)
//                 }}
//            HStack{
//                Button(CalcButton.one.rawValue){
//                                }.foregroundColor(.blue)
//                                .frame(width:100,height:60, alignment:.center)
//                                .clipShape(Rectangle())
//                Button(CalcButton.two.rawValue){
//                                }.foregroundColor(.blue)
//                                .frame(width:100,height:60, alignment:.center)
//                                .clipShape(Rectangle())
//                Button(CalcButton.three.rawValue){
//                               }.foregroundColor(.blue)
//                               .frame(width:100,height:60, alignment:.center)
//                               .clipShape(Rectangle())
//            }

            HStack{
                            Button(CalcButton.one.rawValue){
                            output = "1"
                            lastValue = currentValue
                            currentValue = 1
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle())
                                .border(Color.black, width: 2)
                            Button(CalcButton.two.rawValue){
                            output = "2"
                            lastValue = currentValue
                            currentValue = 2
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle())
                                .border(Color.black, width: 2)
                            Button(CalcButton.three.rawValue){
                            output = "3"
                            lastValue = currentValue
                            currentValue = 3
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                        }
            HStack{
                           Button(CalcButton.four.rawValue){
                           output = "4"
                           lastValue = currentValue
                           currentValue = 4
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.five.rawValue){
                           output = "5"
                           lastValue = currentValue
                           currentValue = 5
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.six.rawValue){
                           output = "6"
                           lastValue = currentValue
                           currentValue = 6
                                          }.foregroundColor(.blue)
                                          .frame(width:100,height:60, alignment:.center)
                                          .clipShape(Rectangle()).border(Color.black, width: 2)
                       }
            HStack{
                           Button(CalcButton.seven.rawValue){
                           output = "7"
                           lastValue = currentValue
                           currentValue = 7
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.eight.rawValue){
                           output = "8"
                           lastValue = currentValue
                           currentValue = 8
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.nine.rawValue){
                           output = "9"
                           lastValue = currentValue
                           currentValue = 9
                                          }.foregroundColor(.blue)
                                          .frame(width:100,height:60, alignment:.center)
                                          .clipShape(Rectangle()).border(Color.black, width: 2)
                       }
            HStack{
                           Button(CalcButton.zero.rawValue){
                           output = "0"
                           lastValue = currentValue
                           currentValue = 0

                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.add.rawValue){
                           self.output = ""
                           currentOperation = Operation.add
                                           }.foregroundColor(.blue)
                                           .frame(width:100,height:60, alignment:.center)
                                           .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.subtract.rawValue){
                           self.output = ""
                           currentOperation = Operation.subtract
                                          }.foregroundColor(.blue)
                                          .frame(width:100,height:60, alignment:.center)
                                          .clipShape(Rectangle()).border(Color.black, width: 2)
                       }
            HStack{
                           Button(CalcButton.multiply.rawValue){
                           self.output = ""
                           currentOperation = Operation.multiply
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.divide.rawValue){
                           self.output = ""
                           currentOperation = Operation.divide
                                            }.foregroundColor(.blue)
                                            .frame(width:100,height:60, alignment:.center)
                                            .clipShape(Rectangle()).border(Color.black, width: 2)
                           Button(CalcButton.sin.rawValue){
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
                case Operation.subtract:
                    self.output = String(Calculations().subtract(value1: currentValue,value2: lastValue))
                case Operation.divide:
                    if(lastValue == 0){
                        self.output = "Cannot divide by zero"
                    }
                    else{
                        self.output = String(Calculations().divide(value1: currentValue,value2: lastValue))
                    }
                case Operation.multiply:
                    self.output = String(Calculations().multiply(value1: currentValue,value2: lastValue))
                case Operation.sin:
                    self.output = String(Calculations().sinus(value: Double(currentValue)))
            }
                    }.foregroundColor(.blue)
                    .frame(width:315,height:60, alignment:.center)
                    .clipShape(Rectangle())
        }
    }
}


struct Calculations
{

    func add(value1:Int, value2:Int) -> Double{
        return Double(value1 + value2)
    }
    func subtract(value1:Int, value2:Int) -> Double{
        return Double(value1 - value2)
    }
    func divide(value1:Int, value2:Int) -> Double{
         if(value2 == 0){
            return 0.0
         }
         return Double(value1/value2);
    }
    func multiply(value1:Int, value2:Int) -> Double{
        return Double(value1 * value2)
    }
    func sinus(value:Double) -> Double{
        return sin(value)
    }
}

// struct CustomButton: View{
//
//     var text: String
//
//     var body: some View{
//
//         Button(self.text){
//         }.foregroundColor(.blue)
//         .frame(width:100,height:60, alignment:.center)
//         .clipShape(Rectangle())
//     }
// }
