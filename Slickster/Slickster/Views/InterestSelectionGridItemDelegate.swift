//
//  InterestSelectionGridItemDelegate.swift
//  Slickster
//
//  Created by Ken Nyame on 5/4/16.
//  
//

import Foundation

protocol InterestSelectionGridItemDelegate {
    
    func categorySelected(interestKey: String!, category: YelpCategory!)
    func categoryDeselected(interestKey: String!, category: YelpCategory!)
}
