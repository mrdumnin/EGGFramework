//
//  EGGFramework_ExampleTests.swift
//  EGGFramework_ExampleTests
//
//  Created by Suchon Dumnin on 11/14/2559 BE.
//  Copyright © 2559 CocoaPods. All rights reserved.
//

import XCTest
import EGGFramework

class EGGFramework_ExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmail() {
        //Test case Ref: https://blogs.msdn.microsoft.com/testing123/2009/02/06/email-address-test-cases/
        
        var result = false
        
        //########## Valid Input ############
        result = Validator.sharedInstance.isEmail("email@domain.com")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isEmail("firstname.lastname@domain.com")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isEmail("firstname-lastname@domain.com")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isEmail("firstname+lastname@domain.com")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isEmail("1234567890@domain.com")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isEmail("email@domain-one.com")
        XCTAssert(result)
        
        //########## Invalid Input ############
        result = Validator.sharedInstance.isEmail("plainaddress")
        XCTAssertFalse(result, "Missing @ sign and domain")
        
        result = Validator.sharedInstance.isEmail("#@%^%#$@#$@#.com")
        XCTAssertFalse(result, "Garbage")
        
        result = Validator.sharedInstance.isEmail("@domain.com")
        XCTAssertFalse(result, "Missing username")
        
        result = Validator.sharedInstance.isEmail("Joe Smith <email@domain.com>")
        XCTAssertFalse(result, "Encoded html within email is invalid")
        
        result = Validator.sharedInstance.isEmail("email.domain.com")
        XCTAssertFalse(result, "Missing @")
    }
    
    func testMobileNumber() {
        
        var result = false
        
        //########## Valid Input ##############
        result = Validator.sharedInstance.isMobile("0850009666")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isMobile("0123456789")
        XCTAssert(result)
        
        //########## Invalid Input ############
        result = Validator.sharedInstance.isMobile("1234567890")
        XCTAssertFalse(result, "Mobile number have to start with 0")
        
        result = Validator.sharedInstance.isMobile("012345678")
        XCTAssertFalse(result, "Mobile number have to be 10 digit")
        
        result = Validator.sharedInstance.isMobile("01234567891011")
        XCTAssertFalse(result, "Mobile number have to be 10 digit")
    }
    
    func testThaiID() {
        var result = false
        
        //########## Valid Input ##############
        result = Validator.sharedInstance.isThaiID("1040853260638")
        XCTAssert(result)
        
        result = Validator.sharedInstance.isThaiID("1419900049165")
        XCTAssert(result)
        
        //########## Invalid Input ############
        result = Validator.sharedInstance.isThaiID("0234567890987")
        XCTAssertFalse(result, "Can not start with 0")
        
        result = Validator.sharedInstance.isThaiID("9234567890987")
        XCTAssertFalse(result, "Can not start with 9")
        
        result = Validator.sharedInstance.isThaiID("1234")
        XCTAssertFalse(result, "Have to be 13 digit only")
        
        result = Validator.sharedInstance.isThaiID("123456789098765")
        XCTAssertFalse(result, "Have to be 13 digit only")
        
        result = Validator.sharedInstance.isThaiID("A234567890987")
        XCTAssertFalse(result, "All digite have to be number")
    }
    
}
