//
//  GitHubActionsUITests.swift
//  GitHubActionsUITests
//
//  Created by Victor on 21.05.2022.
//

import XCTest

class GitHubActionsUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws { }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }
}
