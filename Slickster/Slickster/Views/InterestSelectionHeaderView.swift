//
//  InterestSelectionHeaderView.swift
//  Slickster
//
//  Created by Ken Nyame on 5/22/16.
//  
//

import Foundation

class InterestSelectionHeaderView: UICollectionReusableView {

    @IBOutlet weak var headerTitle: UILabel!
 
    func setTitle(text: String) {
        
        headerTitle.text = text
    }
}
