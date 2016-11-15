//
//  Validator.swift
//  Pods
//
//  Created by Suchon Dumnin on 11/14/2559 BE.
//
//

import UIKit

public class Validator: NSObject {
    public static let sharedInstance = Validator()
    
    private override init() {
        super.init()
    }
    
    // MARK: - Email
    public func isEmail(email: String) -> Bool {
        return Email.isEmail(email)
    }
    
    // MARK: - Mobile
    public func isMobile(mobileNumber: String) -> Bool {
        return Mobile.isMobile(mobileNumber)
    }

    // MARK: - ThaiID
    public func isThaiID(thaiID: String) -> Bool {
        return ThaiID.isThaiID(thaiID)
    }
}
