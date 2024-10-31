//
//  AlertTests.swift
//  Lesson2_BasicTestUITests
//
//  Created by Gary Behan on 30/10/2024.
//

import XCTest

class TextFieldTests : XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        app.launch()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app.terminate()
    }

    
    func textTextField() throws {
        app.buttons["txt-field-btn-acc-id"].tap()
            
        app.staticTexts["TextField"].typeText("Some text")
            // Tap the "Yes" button in the dialog
            
            
            // Assert that the text from the Alert page is visible and matches what we expect
            XCTAssertTrue(app.staticTexts["SubmittedTextLabel"]
                .label.contains("Some text"))
        }
        

}
