//
//  EvenFulCategory.swift
//  Slickster
//
//  Created by Ken Nyame on 12/6/15.
//  
//

import Foundation

class EventFulCategory : NSObject {
    
    var id: String!
    var name: String!
    var parent: String?
    var visible: Bool!
    
    func asDictionary() -> [String:AnyObject] {
        
        var dict = [String:AnyObject]()
        dict["id"] = id
        dict["name"] = name
        dict["parent"] = parent
        dict["visible"] = visible
        
        return dict
    }
    
    class func from(title: String!) -> EventFulCategory? {
        
        return EventFulCategories.sharedInstance.find(title)
    }
    
    class func create(dict: [String:AnyObject]) -> EventFulCategory {
        
        let category = EventFulCategory()
        category.id = dict["id"] as? String
        category.name = dict["name"] as? String
        category.parent = dict["parent"] as? String
        category.visible = dict["visible"] as? Bool
        
        return category
    }
}
