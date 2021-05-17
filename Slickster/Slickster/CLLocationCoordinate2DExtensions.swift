//
//  CLLocationCoordinate2DExtensions.swift
//  Slickster
//
//  Created by Ken Nyame on 10/18/2558 BE.
//  
//

import Foundation
import UIKit

extension CLLocationCoordinate2D {
    
    var string: String {
    
        get {
            
            return "\(self.latitude),\(self.longitude)"
        }
    }
}
