//
//  UnitTestEampleTests.swift
//  UnitTestEampleTests
//
//  Created by Milan Panchal on 29/03/20.
//  Copyright © 2020 Jeenal Infotech. All rights reserved.
//

import XCTest
@testable import UnitTestEample

class UnitTestEampleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSumOfTwoNumbers() {
        
        let num1 = 10
        let num2 = 20
        let sum = num1 + num2
        
        XCTAssertEqual(sum, 30, "sum should be 30")
    }

    func testProductOfTwoNumbers() {
        
        let vc = ViewController()
        let product = vc.productOfTwoNumbers(num1: 2, num2: 3)
        
        XCTAssertEqual(product, 6, "product should be 6")
    }

    func testFetchTODOList() {
        
        let exp = expectation(description: "fetching to-do list from server")
        
        let session: URLSession = URLSession(configuration: .default)
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
        
        // when
        session.dataTask(with: url!) { data, response, error in

            XCTAssertNil(error)
            
            exp.fulfill()
            
        }.resume()
        
        waitForExpectations(timeout: 10.0) { (error) in
            print(error?.localizedDescription ?? "error")
        }

    }
}
