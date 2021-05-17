//
//  YelpCategories.swift
//  Slickster
//
//  Created by Ken Nyame on 9/13/2558 BE.
//  
//

import UIKit

class YelpCategories: NSObject {
    
    static let sharedInstance = YelpCategories()
    
    private var categories:[YelpCategory] = [YelpCategory]()
    private var categoryDict:Dictionary<String, YelpCategory> = Dictionary<String, YelpCategory>()
    
    func getCategories() -> [YelpCategory] {
        
        if(categories.count == 0) {
        
            let path = NSBundle.mainBundle().pathForResource("yelp-categories", ofType: "json")
            let content = try? String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
            let dataFromString = content?.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
            let json = JSON(data: dataFromString!)
        
            for item in json.arrayValue {
            
                let category:YelpCategory = YelpCategory();
                category.alias = item["alias"].string
                category.title = item["title"].string
            
                categories.append(category)
                categoryDict[category.title!] = category
            }
        }
        
        return categories
    }
    
    func find(title: String!) -> YelpCategory {
        
        getCategories();
        
        return self.categoryDict[title]!
    }
}
