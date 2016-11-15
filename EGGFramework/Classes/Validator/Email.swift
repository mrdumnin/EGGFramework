//
//  Email.swift
//  Pods
//
//  Created by Suchon Dumnin on 11/15/2559 BE.
//
//

import UIKit

class Email: NSObject {
    static func isEmail(email: String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(email)
    }
}
