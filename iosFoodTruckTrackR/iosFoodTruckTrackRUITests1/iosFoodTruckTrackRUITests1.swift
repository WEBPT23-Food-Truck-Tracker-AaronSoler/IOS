//
//  iosFoodTruckTrackRUITests1.swift
//  iosFoodTruckTrackRUITests1
//
//  Created by BrysonSaclausa on 10/26/20.
//

import XCTest

class iosFoodTruckTrackRUITests1: XCTestCase {
    var app: XCUIApplication! = nil
    
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
    
    func testpresentWorldsBestFoodTruckCell() {
        findAtruckTabBarButton.tap()
        XCTAssertTrue(worldsBestFoodTructCell.isHittable)
        worldsBestFoodTructCell.tap()
    }
    
    func testSomething() {findAtruckTabBarButton.tap()
        XCTAssertTrue(corndogsOnTheRunCell.isHittable)
        corndogsOnTheRunCell.tap()
   }
    
    
    
    
    

    //MARK: - UI helpers
    var findAtruckTabBarButton: XCUIElement {
        return app.tabBars["Tab Bar"].buttons["Find A Truck"]
    }
    
    var worldsBestFoodTructCell: XCUIElement {
        return app.tables/*@START_MENU_TOKEN@*/.cells.matching(identifier: "operatorsTableView.operatorCell").staticTexts["Worlds Best Taco Truck, Period"]/*[[".cells.matching(identifier: \"operatorsTableView.operatorCell\").staticTexts[\"Worlds Best Taco Truck, Period\"]",".staticTexts[\"Worlds Best Taco Truck, Period\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
    }
    
    var corndogsOnTheRunCell: XCUIElement {
        return app.tables.cells.matching(identifier: "operatorsTableView.operatorCell").staticTexts["Corndogs On The Run"]
    }
    
    var allowWhileUsingAppPressed: XCUIElement {
        return app.alerts["Allow “iosFoodTruckTrackR” to use your location?"].scrollViews.otherElements.buttons["Allow While Using App"]
    }
    
    var alertAllowLocationOnceChosen: XCUIElement {
        return app.alerts["Allow “iosFoodTruckTrackR” to use your location?"].scrollViews.otherElements.buttons["Allow Once"]
    }
        
    
   
}




