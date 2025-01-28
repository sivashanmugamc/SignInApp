//
//  XCUIElementExtension.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//
import XCTest

extension XCUIElement {
    
    var isVisible: Bool {
        return exists && isHittable
    }
    
    func clearText() {
        guard let stringValue = value as? String else {
            XCTFail("Tried to clear and enter text into a non string value.")
            return
        }
        tap()
        var deleteString: String = ""
        for _ in stringValue {
            deleteString += "\u{8}"
        }
        typeText(deleteString)
    }
    
    func clearAndTypeText(text: String) {
        clearText()
        typeText(text)
    }
    
    func scrollToElement(element: XCUIElement) {
        var numberOfSwipes = 0
        while !element.isVisible && numberOfSwipes < 10 {
            numberOfSwipes += 1
            app.swipeUp()
        }
        if !element.isVisible {
            XCTFail("Element not visible after 30 swipes.")
        }
    }
    
    func forceTapElement() {
        if isHittable {
            tap()
        } else {
            coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5)).tap()
        }
    }
    
    func tapAbove() {
        coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: -0.1)).tap()
    }
    
}

