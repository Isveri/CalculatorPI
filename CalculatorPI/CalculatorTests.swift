//
//  CalculatorTests.swift
//  CalculatorPITests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import CalculatorPI

final class CalculatorTests: XCTestCase {
    
    func testPositiveScenarioForAddCalculation(){
        
        //Given
        let v1 = 5
        let v2 = 6
        //When
        let result = Calculations().add(value1: v1,value2: v2)
        
        //Then
        XCTAssertEqual(result, 11.0)
        
    }
    
    func testNegativeScenarioForAddCalculation(){
        
        //Given
        let v1 = 5
        let v2 = 6
        //When
        let result = Calculations().add(value1: v1,value2: v2)
        
        //Then
        XCTAssertNotEqual(result, 10.0)
        
    }
    
    func testPositiveScenarioForSubCalculation(){
        //Given
        let v1 = 5
        let v2 = 6
        //When
        let result = Calculations().subtract(value1: v1,value2: v2)
        
        //Then
        XCTAssertEqual(result, -1.0)
        
        
    }
    
    func testNegativeScenarioForSubCalculation(){
        //Given
        let v1 = 5
        let v2 = 6
        //When
        let result = Calculations().subtract(value1: v1,value2: v2)
        
        //Then
        XCTAssertNotEqual(result, 11.0)
    }
    
    func testPositiveScenarioForProdCalculation(){
        //Given
        let v1 = 5
        let v2 = 6
        //When
        let result = Calculations().multiply(value1: v1,value2: v2)
        
        //Then
        XCTAssertEqual(result, 30.0)
        
        
    }
    
    func testNegativeScenarioForProdCalculation(){
        //Given
        let v1 = 5
        let v2 = 6
        //When
        let result = Calculations().multiply(value1: v1,value2: v2)
        
        //Then
        XCTAssertNotEqual(result, 32.0)
    }
    
    func testPositiveScenarioForDivCalculation(){
        //Given
        let v1 = 6
        let v2 = 3
        //When
        let result = Calculations().divide(value1: v1,value2: v2)
        
        //Then
        XCTAssertEqual(result, 2)
        
        
    }
    
    func testZeroScenarioForDivCalculations(){
        //Given
        let v1 = 5
        let v2 = 0
        //When
        let result = Calculations().divide(value1: v1,value2: v2)
        
        //Then
        XCTAssertNil(result)
    }
    
    func testPostitiveScenarioForSinCalculations(){
        //Given
        let v = 1.0
        //When
        let result = Calculations().sinus(value: v)
        
        //Then
        XCTAssertEqual(result, 0.8414709848078965)
        
    }

}
