//
//  HomePageExtension.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 25/01/25.
//
import Foundation
import XCTest

extension HomePageProtocol {
    /*
     Summary : Verify Home Page is loaded after successful Login
     */
    func verifyHomePageLoaded()
    {
        XCTContext.runActivity(named: "Then Verify Home Page is Loaded") { _ in
            let homePageObj = HomePage.shared
            XCTAssertTrue(homePageObj.getTflLogo().exists, "Home Page is not loaded with TFL Logo")
            XCTAssertTrue(homePageObj.getNameLabel().exists, "Name Label is not loaded")
            XCTAssertTrue(homePageObj.getRoleLabel().exists, "Role Label is not loaded")
            XCTAssertTrue(homePageObj.getOfficeLabel().exists, "Office Label is not loaded")
        }
    }

    /*
     Summary : Verify User Details on Home Page after successful Login
     */
    func verifyUserDetails(name:String, role:String, office:String)
    {
        XCTContext.runActivity(named: "Then Verify User Details") { _ in
            let homePageObj = HomePage.shared
            XCTAssertTrue(homePageObj.getdynamicText(text: name).exists,"User Name: " + name + " is not displayed")
            XCTAssertTrue(homePageObj.getdynamicText(text: role).exists,"Role: " + role + " is not displayed")
            XCTAssertTrue(homePageObj.getdynamicText(text: office).exists,"Office: " + office + " is not displayed")
        }
    }

    /*
     Summary : Click on Sign Out Button
     */
    func andITapOnSignOutButton()
    {
        XCTContext.runActivity(named: "And I Tap on Sign Out Button") { _ in
            let homePageObj = HomePage.shared
            click(element: homePageObj.getsignOutBtn())
        }
    }

    /*
     Summary : Verify Sign Out Alert
     */
    func andIVerifySignOutAlert()
    {
        XCTContext.runActivity(named: "Then I Verify Signout Alert") { _ in
            let homePageObj = HomePage.shared
            XCTAssertTrue(homePageObj.getSignoutAlertMessage().exists, "Signout Alert Message is not displayed")
        }
    }
    
    /*
     Summary : Click on Confirm Sign Out Button on Sign Out Alert
     */
    func andIConfirmSignOut()
    {
        XCTContext.runActivity(named: "Then I Confirm Signout") { _ in
            let homePageObj = HomePage.shared
            click(element: homePageObj.getsignOutAlertBtn())
        }
    }
}
