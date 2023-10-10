//
//  CalculatorPIApp.swift
//  CalculatorPI
//
//  Created by student on 10/10/2023.
//

import SwiftUI

@main
struct CalculatorPIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(currentValue: 10, lastValue: 10, currentOperation: Operation.add)
        }
    }
}
