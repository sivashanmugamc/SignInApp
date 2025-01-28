//
//  HomeFeature.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 27/01/25.
//
import Foundation
import XCTest
class HomeFeature:SignInXCTest, CommonProtocol, LoginPageProtocol, HomePageProtocol
{
    func test_01VerifyWelcomePageIsLoaded()
    {
        givenIAmOnSignInPage()
        whenIEnterUsername(username: TestData.username)
        andIEnterPassword(password: TestData.password)
        whenITapOnSignInButton()
        verifyHomePageLoaded()
        verifyUserDetails(
            name: TestData.name,
            role: TestData.role,
            office: TestData.office
        )
    }
    func test_02VerifySignout()
    {
        givenIAmOnSignInPage()
        whenIEnterUsername(username: TestData.username)
        andIEnterPassword(password: TestData.password)
        whenITapOnSignInButton()
        andITapOnSignOutButton()
        andIVerifySignOutAlert()
        andIConfirmSignOut()
        thenVerifyWelcomePageLoadsCorrectly()
    }
}
