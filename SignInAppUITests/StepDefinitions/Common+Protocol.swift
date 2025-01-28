//
//  Common+Protocol.swift
//  SignInApp
//
//  Created by Sivashanmugam Chidambaram on 23/01/25.
//
import Foundation
import XCTest
protocol CommonProtocol {
    
}

extension CommonProtocol {
    /*
     Summary : Method to launch SignIn App
     */
    func givenILaunchSignInApp() {
        XCTContext.runActivity(named: "Given SignIn App is Launched"){_ in
            let app = XCUIApplication()
            app.launch()
        }
    }
}
