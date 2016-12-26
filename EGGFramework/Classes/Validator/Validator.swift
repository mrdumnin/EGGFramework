//
//  Validator.swift
//  Pods
//
//  Created by Suchon Dumnin on 11/14/2559 BE.
//
//

import UIKit

open class Validator: NSObject {
    open static let sharedInstance = Validator()
    
    fileprivate override init() {
        super.init()
    }
    
    // MARK: - Email
    open func isEmail(_ email: String) -> Bool {
        return Email.isEmail(email)
    }
    
    // MARK: - Mobile
    open func isMobile(_ mobileNumber: String) -> Bool {
        return Mobile.isMobile(mobileNumber)
    }

    // MARK: - ThaiID
    open func isThaiID(_ thaiID: String) -> Bool {
        return ThaiID.isThaiID(thaiID)
    }
}
