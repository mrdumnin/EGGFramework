//
//  Mobile.swift
//  Pods
//
//  Created by Suchon Dumnin on 11/15/2559 BE.
//
//

import UIKit

class Mobile: NSObject {
    static func isMobile(mobileNumber: String) -> Bool {
        /*
         Expected Result:
         - Length 10 digit
         - Start with 0
         */
        let PHONE_REGEX = "^0\\d{9}"
        
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        return phoneTest.evaluateWithObject(mobileNumber)
    }
}
