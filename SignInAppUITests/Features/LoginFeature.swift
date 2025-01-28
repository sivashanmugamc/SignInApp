//
//  LoginFeature.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//
import Foundation
import XCTest
class LoginFeature:SignInXCTest, CommonProtocol, LoginPageProtocol, HomePageProtocol
{

    func test_01VerifyWelcomePageIsLoaded() {
        givenILaunchSignInApp()
        thenVerifyWelcomePageLoadsCorrectly()
    }

    func test_02VerifyAlertForEmptyUsernamePassword() {
        givenIAmOnSignInPage()
        whenITapOnSignInButton()
        thenIVerifyLoginErrorAlert()
    }

    func test_03VerifyPasswordFieldIsMasked() {
        thenVerifyPasswordFieldIsMasked(passwordText: TestData.password)
    }

    func test_04VerifyFailedLoginInvalidUsername() {
        givenIAmOnSignInPage()
        whenIEnterUsername(username: TestData.invalid_username)
        andIEnterPassword(password: TestData.password)
        whenITapOnSignInButton()
        thenIVerifyLoginErrorAlert()
    }
    
    func test_05VerifyFailedLoginInvalidPassword() {
        givenIAmOnSignInPage()
        whenIEnterUsername(username: TestData.username)
        andIEnterPassword(password: TestData.invalid_password)
        whenITapOnSignInButton()
        thenIVerifyLoginErrorAlert()
    }

    func test_06VerifySuccessfulLogin() {
        givenIAmOnSignInPage()
        whenIEnterUsername(username: TestData.username)
        andIEnterPassword(password: TestData.password)
        whenITapOnSignInButton()
        verifyHomePageLoaded()
    }
}
