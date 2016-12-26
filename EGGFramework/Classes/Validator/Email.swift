//
//  Email.swift
//  Pods
//
//  Created by Suchon Dumnin on 11/15/2559 BE.
//
//

import UIKit

class Email: NSObject {
    static func isEmail(_ email: String) -> Bool {
        
        //let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailRegEx = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
}
