//
//  UserLocation.swift
//  Slickster
//
//  Created by Ken Nyame on 9/21/2558 BE.
//  
//

import Foundation
import CoreLocation

class UserLocation: NSObject {

    static var current: CLLocationCoordinate2D!
    static var placeOverridden: PlaceDetails?
    
    class func get() -> CLLocationCoordinate2D! {
        
        if UserLocation.placeOverridden != nil {
            
            let lat = placeOverridden!.latitude
            let lng = placeOverridden!.longitude
            
            let latlng = CLLocationCoordinate2D(latitude: lat, longitude: lng)
            return latlng
        }
        
        return current
    }
}
