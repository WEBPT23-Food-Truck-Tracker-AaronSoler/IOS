//
//  iosFoodTruckTrackRUnitTests3.swift
//  iosFoodTruckTrackRUnitTests3
//
//  Created by BrysonSaclausa on 11/15/20.
//

import XCTest
@testable import iosFoodTruckTrackR


class iosFoodTruckTrackRUnitTests1: XCTestCase {
    
    let mockOperatorController = MockOperatorController()
    let loginControllR = LoginController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testOperatorControllerCount() {
        XCTAssertEqual(mockOperatorController.operatorArray.count, 3, "")
    }
    
    
    func testSignUp() {
        let loginControllR = LoginController()
        let testDiner = Diner(email: "b@gmail.com", username: "brys20", password: "wordpass20", firstName: "b", lastName: "s")
        loginControllR.signUp(with: testDiner, completion: { error in
            XCTAssertNil(error)
        })
        
    }

}
