//
//  HomePage.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 24/01/25.
//
import Foundation
import XCTest
class HomePage:BasePage
{
    enum elements: String {
        case tfl_logo = "transport-for-london-1-logo-png-transparent.png"
        case tfl_title = "My TfL"
        case name_label = "Name: "
        case role_label = "Role: "
        case office_label = "Office: "
        case signOutBtn = "Sign Out"
        case signout_alert_title = "Sign Out?"
        case signout_alert_message = "Are you sure you want to sign out?"
        var description: String {
                   return self.rawValue
               }
    }
    private lazy var tfl_logo = images.matching(identifier:elements.tfl_logo.description).firstMatch
    private lazy var tfl_title = staticTexts[elements.tfl_title.description]
    private lazy var name_label = staticTexts[elements.name_label.description]
    private lazy var role_label = staticTexts[elements.role_label.description]
    private lazy var office_label = staticTexts[elements.office_label.description]
    private lazy var signOutBtn = buttons[elements.signOutBtn.description]
    private lazy var signOutAlert = alerts[elements.signout_alert_title.description].scrollViews.otherElements
    private lazy var signout_alert_button = signOutAlert.buttons[elements.signOutBtn.description]
    private lazy var signout_alert_message = signOutAlert.staticTexts[elements.signout_alert_message.description]

    func getTflLogo() -> XCUIElement {
        return tfl_logo
    }

    func getTflTitle() -> XCUIElement {
        return tfl_title
    }

    func getNameLabel() -> XCUIElement {
        return name_label
    }

    func getRoleLabel() -> XCUIElement {
        return role_label
    }

    func getOfficeLabel() -> XCUIElement {
        return office_label
    }

    func getsignOutBtn() -> XCUIElement {
        return signOutBtn
    }

    func getsignOutAlertBtn() -> XCUIElement {
        return signout_alert_button
    }

    func getSignoutAlertMessage() -> XCUIElement {
        return signout_alert_message
    }

    func getdynamicText(text:String) -> XCUIElement {
        return staticTexts[text]
    }

    private override init() { }
    static let shared = HomePage()
}
