//
//  ThaiID.swift
//  Pods
//
//  Created by Suchon Dumnin on 11/15/2559 BE.
//
//

import UIKit

class ThaiID: NSObject {
    static func isThaiID(thaiID: String) -> Bool {
        
        let PHONE_REGEX = "^\\d{13}"
        let thaiIDTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        if !thaiIDTest.evaluateWithObject(thaiID) { //Only 13 digit and all is number
            return false
        }
        
        var rang = Range<String.Index>(start: thaiID.startIndex, end: thaiID.startIndex.advancedBy(1))
        let digit0 = thaiID.substringWithRange(rang)
        
        let firstDigit = String(digit0)
        if firstDigit == "0" || firstDigit == "9" { //Can't start with 0 or 9
            return false
        }
        
        var expectedLastDigit = 0
        var acctualLastDigit = 0
        var j = 13
        for var i in 0...12 {
            
            let rang = Range<String.Index>(start: thaiID.startIndex.advancedBy(i), end: thaiID.startIndex.advancedBy(i + 1))
            let number = Int(thaiID.substringWithRange(rang))
            
            if i != 12 {
                expectedLastDigit = expectedLastDigit + number! * j
                j = j - 1
            } else {
                acctualLastDigit = number!
            }
        }
        
        expectedLastDigit = 11 - (expectedLastDigit % 11)
        return expectedLastDigit == acctualLastDigit
    }
}
