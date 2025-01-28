//
//  Helper.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//

import Foundation
import XCTest


func waitForExistsOfElement(_ element : XCUIElement) {
    _ = XCTestCase().waitForExists(element:element)
}

func waitForHittableThenTap(_ element : XCUIElement) {
    XCTestCase().waitForHittableAndThenTap(element: element)
}

func waitForNotExistsOfElement(_ element : XCUIElement) {
    XCTestCase().waitForNotExists(element: element)
}

func scrollToElement(_ element : XCUIElement) {
     XCUIApplication().scrollToElement(element : element)
}
/*
 Summary: Click on given Button
 */
func click(element:XCUIElement) {
    waitForHittableThenTap(element)
}

/*
 Summary: Clear and Type Text
 */
func type(element:XCUIElement, text:String) {
    waitForExistsOfElement(element)
    element.clearAndTypeText(text: text)
}
