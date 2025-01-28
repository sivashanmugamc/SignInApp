//
//  LoginPage.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//
import Foundation
import XCTest
class LoginPage:BasePage
{
    enum elements: String {
        case tfl_label = "TfL ID"
        case tfl_id = "TfL ID...."
        case password_label = "Password"
        case password = "Password..."
        case signInBtn = "Sign in"
        case loginFailureAlertTitle = "Login Error"
        case loginFailureAlertMessage = "Looks like either your Username or Password is incorrect. Please try again."
        case loginFailureConfirmButton = "Done"
        var description: String {
                   return self.rawValue
               }
    }
    private lazy var tfl_label = staticTexts[elements.tfl_label.description]
    private lazy var tfl_id = textFields[elements.tfl_id.description]
    private lazy var password_label = staticTexts[elements.password_label.description]
    private lazy var password = secureTextFields[elements.password.description]
    private lazy var signInButton = buttons[elements.signInBtn.description]
    private lazy var loginFailureAlertTitle = staticTexts[elements.loginFailureAlertTitle.description]
    private lazy var loginFailureAlertMessage = staticTexts[elements.loginFailureAlertMessage.description]
    private lazy var loginFailureAlertDoneButton = buttons[elements.loginFailureConfirmButton.description]
    
    func getTflLabel() -> XCUIElement {
        return tfl_label
    }

    func getUserName() -> XCUIElement {
        return tfl_id
    }

    func getPasswordLabel() -> XCUIElement {
        return password_label
    }

    func getPassword() -> XCUIElement {
        return password
    }

    func getSignInBtn() -> XCUIElement {
        return signInButton
    }

    func getLoginFailureAlertTitle() -> XCUIElement {
        return loginFailureAlertTitle
    }

    func getLoginFailureAlertMessage() -> XCUIElement {
        return loginFailureAlertMessage
    }

    func getLoginFailureAlertDoneBtn() -> XCUIElement {
        return loginFailureAlertDoneButton
    }

    /*
     Click on SignIn Button
     */
    func clickSignInBtn() {
        click(element: signInButton)
    }
    
    /*
     Click on Done Button on Login Error alert
     */
    func clickAlertDoneBtn() {
        click(element: loginFailureAlertDoneButton)
    }

    /*
     Enter Username
     */
    func enterUsername(userName: String) {
        type(element: getUserName(), text: userName)
    }

    /*
     Enter Password
     */
    func enterPassword(passWord: String) {
        type(element: getPassword(), text: passWord)
    }
    
    private override init() { }
    static let shared = LoginPage()
}
