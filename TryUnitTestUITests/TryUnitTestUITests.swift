//
//  TryUnitTestUITests.swift
//  TryUnitTestUITests
//
//  Created by 山本祐太 on 2022/09/11.
//

import XCTest

class TryUnitTestUITests: XCTestCase {

  override func setUpWithError() throws {
      super.setUp()
      continueAfterFailure = true
      XCUIApplication().launch()
  }

  override func tearDownWithError() throws {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testButton() throws {
    // UI tests must launch the application that they test.
    let app = XCUIApplication()
    let button = app.buttons["TestButton"]
    let text = app.staticTexts["TestText"]
    let text2 = app.staticTexts["TestText2"]
    let textfield = app.textFields["TestTextField"]
    // (1)
    // Textの表示内容はvalueで取る
    XCTAssertEqual(text.value as! String, "Hello")
    // (2)
    // Buttonの表示内容はtitleで取る
    XCTAssertEqual(button.title, "Hello")
    // (3)
    textfield.typeText("テスト")
    button.tap()
    // (4)
    XCTAssertEqual(button.title, "World")
    // (5)
    XCTAssertEqual(textfield.value as! String, text2.value as! String)
  }

//  func testLaunchPerformance() throws {
//    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//      // This measures how long it takes to launch your application.
//      measure(metrics: [XCTApplicationLaunchMetric()]) {
//        XCUIApplication().launch()
//      }
//    }
//  }
}
