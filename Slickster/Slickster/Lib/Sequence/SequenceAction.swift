//
//  SequenceAction.swift
//  Slickster
//
//  Created by Ken Nyame on 9/14/2558 BE.
//  
//

import Foundation

class SequenceAction: NSObject {
    
    private var action: (((NSError?) -> Void) -> Void)!
    
    init(fn: ((NSError?) -> Void) -> Void) {
        
        self.action = fn
    }
    
    func run(callback: (NSError?) -> Void) {
        
        self.action(callback)
    }
}
