//
//  LoginPageExtension.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//
import Foundation
import XCTest

extension LoginPageProtocol {

    /*
     Summary : Tap on Sign In Button
     */
    func givenIAmOnSignInPage() {
        XCTContext.runActivity(named: "Given I am on SignIn Page") { _ in
            let loginPageObj = LoginPage.shared
            XCTAssertTrue(loginPageObj.getSignInBtn().exists, "SignIn Page is not loaded")
        }
    }

    /*
     Summary : Method to Verify If the Welcome Page is Loaded
     */
    func thenVerifyWelcomePageLoadsCorrectly() {
        XCTContext.runActivity(named: "Then Verify Welcome Page is Loaded with all elements") { _ in
            let loginPageObj = LoginPage.shared
            XCTAssertTrue(loginPageObj.getTflLabel().waitForExistence(timeout: 10), "Tfl ID Label is missing")
            XCTAssertTrue(loginPageObj.getUserName().exists, "Tfl ID Text Field is missing")
            XCTAssertTrue(loginPageObj.getPasswordLabel().exists, "Password Label is missing")
            XCTAssertTrue(loginPageObj.getPassword().exists, "Password Text Field is missing")
            XCTAssertTrue(loginPageObj.getSignInBtn().exists, "Sign in Button is missing")
        }
    }

    /*
     Summary : Method to Verify If the Password Field is Masked
     */
    func thenVerifyPasswordFieldIsMasked(passwordText:String) {
        XCTContext.runActivity(named: "Then Verify that the Password Field is Masked") { _ in
            let loginPageObj = LoginPage.shared
            type(element: loginPageObj.getPassword(), text: passwordText)
            let value = loginPageObj.getPassword().value as! String
            XCTAssertNotEqual(value, passwordText, "Password field is not secure (value is not masked)")
        }
    }

    /*
    Summary : Type Given username on Username Text Field
    */
    func whenIEnterUsername(username:String) {
        XCTContext.runActivity(named: "When I enter Username") { _ in
            let loginPageObj = LoginPage.shared
            loginPageObj.enterUsername(userName: username)
        }
    }

    /*
    Summary : Type Given password on Password Text Field
    */
    func andIEnterPassword(password:String) {
        XCTContext.runActivity(named: "When I Enter Password") { _ in
            let loginPageObj = LoginPage.shared
            loginPageObj.enterPassword(passWord: password)
        }
    }
    
    /*
     Summary : Tap on Sign In Button
     */
    func whenITapOnSignInButton() {
        XCTContext.runActivity(named: "When I Tap on SignIn Button") { _ in
            let loginPageObj = LoginPage.shared
            loginPageObj.clickSignInBtn()
        }
    }

    /*
     Summary : Verify Login Error Message for Invalid Login
     */
    func thenIVerifyLoginErrorAlert() {
        XCTContext.runActivity(named: "Then I verify Login Error Alert") { _ in
            let loginPageObj = LoginPage.shared
            XCTAssertTrue(loginPageObj.getLoginFailureAlertTitle().exists, "Login Error Alert is not displayed")
            XCTAssertTrue(loginPageObj.getLoginFailureAlertMessage().exists, "Login Error Alert Message is not displayed")
        }
    }

    /*
     Summary : Close Invalid Login Error Message
     */
    func andICloseTheAlert() {
        XCTContext.runActivity(named: "And I Accept The Login Error Alert") { _ in
            let loginPageObj = LoginPage.shared
            loginPageObj.clickAlertDoneBtn()
        }
    }
}
