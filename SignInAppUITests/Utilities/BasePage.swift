//
//  BasePage.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//
import Foundation
import XCTest

class BasePage {
    
    //MARK:- Basic elements
    lazy var navigationBar = findAll(.navigationBar)
    lazy var buttons = findAll(.button)
    lazy var staticTexts = findAll(.staticText)
    lazy var textFields = findAll(.textField)
    lazy var secureTextFields = findAll(.secureTextField)
    lazy var searchFields = findAll(.searchField)
    lazy var checkBoxes = findAll(.checkBox)
    lazy var cells = findAll(.cell)
    lazy var toggles = findAll(.toggle)
    lazy var activityIndicators = findAll(.activityIndicator)
    lazy var webViews = findAll(.webView)
    lazy var webViewButton = webViews.buttons
    lazy var webViewStaticText = app.webViews.staticTexts
    lazy var alerts = findAll(.alert)
    lazy var switches = findAll(.switch)
    lazy var pickers = findAll(.pickerWheel)
    lazy var links = findAll(.link)
    lazy var others = findAll(.other)
    lazy var tableStaticTexts = findAll(.table).staticTexts
    lazy var tables = findAll(.table)
    lazy var images = findAll(.image)
    
    //MARK:- Custom methods to find elements
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery {
        return app.descendants(matching: type)
    }
    
    func findCellWithDynamicText(text : String)-> XCUIElement {
        return tables.staticTexts.element(matching: NSPredicate(format: "label CONTAINS[cd] '\(text)'")).firstMatch
    }
    
    func findCellWith(text : String)-> XCUIElement {
        return tables.cells.containing(.staticText, identifier: text).element
    }
    
    func findCellWithStaticText(text : String)-> XCUIElement {
        return tables.staticTexts[text]
    }
    
    func findCellWithLink(text : String)-> XCUIElement {
        return tables.textViews.element(matching: NSPredicate(format: "label CONTAINS[cd] '\(text)'"))
    }

    func findCellWithSwitchesWith(text : String)-> XCUIElement {
        return switches.element(matching: NSPredicate(format: "label CONTAINS[cd] '\(text)'"))
    }
    
    func findCellWithStaticLink(text : String)-> XCUIElement {
        return tables.textViews.links[text]
    }
    
    func findCellWithLinkButton(text : String)-> XCUIElement {
        return tables.cells.textViews.containing(.link, identifier: text).element
    }
    
    func findCell(withIdentifier text: String, andStaticText: String)-> XCUIElement {
        return tables.cells.containing(.staticText, identifier:text).staticTexts[andStaticText]
    }
    
    func findLabelWithDynamicText(text : String)-> XCUIElement {
        return staticTexts.element(matching: NSPredicate(format: "label CONTAINS[cd] '\(text)'"))
    }
    
    func findOtherElementInCell(text: String)-> XCUIElement {
        return tables.otherElements[text]
    }
    
    func findNavBarStaticText(navBarName : String)-> XCUIElement {
        let navBarStaticText = self.navigationBar[navBarName].otherElements[navBarName]
        return navBarStaticText
    }
}
