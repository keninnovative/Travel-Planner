//
//  UserAccount.swift
//  Slickster
//
//  Created by Ken Nyame on 10/14/2558 BE.
//  
//

import Foundation
import Parse

class UserAccount : PFObject, PFSubclassing {

    var type: String? {
        
        get { return self["type"] as? String }
        set { self["type"] = newValue }
    }
    
    var accountId: String? {
        
        get { return self["accountId"] as? String }
        set { self["accountId"] = newValue }
    }
    
    class func parseClassName() -> String {
        
        return "UserAccount"
    }
}
