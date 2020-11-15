//
//  iosFoodTruckTrackRUITests1.swift
//  iosFoodTruckTrackRUITests1
//
//  Created by BrysonSaclausa on 10/26/20.
//

import XCTest

class iosFoodTruckTrackRUITests1: XCTestCase {
    var app: XCUIApplication! = nil
    
    var findAtruckTabBarButton: XCUIElement {
        return app.tabBars["Tab Bar"].buttons["Find A Truck"]
    }


    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }
    
    func testToggleTabBarToFindATruck() throws {
        XCTAssertTrue(findAtruckTabBarButton.isHittable)
        findAtruckTabBarButton.tap()
    }
    
    //func testAllowUserLocation
    
    
   
}




