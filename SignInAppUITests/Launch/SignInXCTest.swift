//
//  SignInXCTest.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//

import XCTest

let app: XCUIApplication = XCUIApplication()

class SignInXCTest: XCTestCase {
    
    // Setup by launching app
    override func setUp() {
        super.setUp()
    
        let app = XCUIApplication()
        app.launch()
        
        continueAfterFailure = false
    }
    
    // tearDown() instance method called after EACH test case completes
    override func tearDown() {
        super.tearDown()
//        app.terminate()
    }
}
