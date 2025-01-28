//
//  XCTestCaseExtension.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//

import XCTest

extension XCTestCase {
    
    func waitForHittableAndThenTap(element: XCUIElement) {
        waitForHittable(element: element)
        element.tap()
    }
    
    // MARK: Wait for expectations
    
    func waitForHittable(element: XCUIElement, waitSeconds: TimeInterval = 10.0) {
        let existsPredicate = NSPredicate(format: "hittable == true")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: waitSeconds) { (error) -> Void in
            if (error != nil) {
                XCTAssertTrue(element.isHittable, "\(element) not hittable.")
            }
        }
    }
    
    func waitForExists(element: XCUIElement, timeout: TimeInterval = 10.0) -> XCTWaiter.Result {
        let predicate = NSPredicate(format: "exists == true")
        let existsExpectation = expectation(for: predicate, evaluatedWith: element, handler: nil)
        return XCTWaiter().wait(for: [existsExpectation], timeout: timeout)
    }
    
    func waitForNotExists(element: XCUIElement, waitSeconds: TimeInterval = 10.0, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == false")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: waitSeconds) { (error) -> Void in
            if (error != nil) {
                XCTAssertTrue(!element.exists, "\(element) exists.")
            }
        }
    }
    
    func takeScreenshotAndAttach(for lifeTime : XCTAttachment.Lifetime) {
        let screenshot = XCUIScreen.main.screenshot()
        let screeshotAttachment = XCTAttachment(screenshot: screenshot)
        screeshotAttachment.lifetime = lifeTime
        add(screeshotAttachment)
    }
}
