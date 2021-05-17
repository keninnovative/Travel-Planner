//
//  InterestCategories.swift
//  Slickster
//
//  Created by Ken Nyame on 11/24/15.
//  
//

import Foundation

class InterestCategories {
    
    var key: String!
    var matchAnyOfActivityType: (String -> Bool)!
    var templateType: String?
    var iconSuffix: String?
    var isDayTime: Bool?
    var categories: [YelpCategory]!
}
