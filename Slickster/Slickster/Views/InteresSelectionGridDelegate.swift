//
//  InteresSelectionGridDelegate.swift
//  Slickster
//
//  Created by Ken Nyame on 5/4/16.
//  
//

import Foundation

protocol InterestSelectionGridDelegate {
    
    func interestSelected(interestKey: String!, interest: UserInterest!)
    func interestDeselected(interestKey: String!, interest: UserInterest!)
}
