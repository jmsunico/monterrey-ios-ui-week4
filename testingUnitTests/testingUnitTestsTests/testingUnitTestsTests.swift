//
//  testingUnitTestsTests.swift
//  testingUnitTestsTests
//
//  Created by José-María Súnico on 20160712.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import XCTest
@testable import testingUnitTests

class testingUnitTestsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	func testWeightLow(){
		let lowWeight: imcModel = imcModel()
		lowWeight.weight = 50
		lowWeight.height = 1.7
		XCTAssertEqual(lowWeight.imcCalc(), 17.30, "Low weight tested OK!")
	}
	
	func testWeightNormal(){
		let lowWeight: imcModel = imcModel()
		lowWeight.weight = 60
		lowWeight.height = 1.7
		XCTAssertEqual(lowWeight.imcCalc(), 20.76, "Normal weight tested OK!")
	}
	
	func testWeightHigh(){
		let lowWeight: imcModel = imcModel()
		lowWeight.weight = 70
		lowWeight.height = 1.7
		XCTAssertEqual(lowWeight.imcCalc(), 20.76, "Normal weight tested OK!")
	}
	
	func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
