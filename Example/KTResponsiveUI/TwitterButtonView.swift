//
//  TwitterButtonView.swift
//  KTResponsiveUI
//
//  Created by Craig Holliday on 9/8/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import KTResponsiveUI
import SwiftIcons

class TwitterButtonView: UIView {
    var commentButton: UIButton!
    var retweetButton: UIButton!
    var favoriteButton: UIButton!
    var messageButton: UIButton!
    
    override func performLayout() {
        let greenRetweetColor = UIColor(red: 0.09, green: 0.75, blue: 0.39, alpha: 1.0)
        let heartColor = UIColor(red: 0.88, green: 0.14, blue: 0.37, alpha: 1.0)
        
        let buttonHeight: CGFloat = 18
        let iconSize = UIView.getValueScaledByScreenHeightFor(baseValue: 18) - UIView.getValueScaledByScreenHeightFor(baseValue: 2)
        let buttonColor = UIColor(red: 0.53, green: 0.60, blue: 0.65, alpha: 1.0)
        
        commentButton = UIButton(height: buttonHeight)
        commentButton.setIcon(icon: .fontAwesome(.commentO), iconSize: iconSize, color: buttonColor, backgroundColor: .clear, forState: .normal)
        commentButton.addTarget(self, action: #selector(self.commentButtonPressed), for: .touchUpInside)
        self.addSubview(commentButton)
        
        retweetButton = UIButton(origin: commentButton.topRightPoint(), leftInset: 60, height: buttonHeight)
        retweetButton.setIcon(icon: .fontAwesome(.retweet), iconSize: iconSize, color: buttonColor, backgroundColor: .clear, forState: .normal)
        retweetButton.setIcon(icon: .fontAwesome(.retweet), iconSize: iconSize, color: greenRetweetColor, backgroundColor: .clear, forState: .selected)
        retweetButton.addTarget(self, action: #selector(self.retweetButtonPressed), for: .touchUpInside)
        self.addSubview(retweetButton)
        
        favoriteButton = UIButton(origin: retweetButton.topRightPoint(), leftInset: 60, height: buttonHeight)
        favoriteButton.setIcon(icon: .fontAwesome(.heartO), iconSize: iconSize, color: buttonColor, backgroundColor: .clear, forState: .normal)
        favoriteButton.setIcon(icon: .fontAwesome(.heart), iconSize: iconSize, color: heartColor, backgroundColor: .clear, forState: .selected)
        favoriteButton.addTarget(self, action: #selector(self.favoriteButtonPressed), for: .touchUpInside)
        self.addSubview(favoriteButton)
            
        messageButton = UIButton(origin: favoriteButton.topRightPoint(), leftInset: 60, height: buttonHeight)
        messageButton.setIcon(icon: .fontAwesome(.envelopeO), iconSize: iconSize, color: buttonColor, backgroundColor: .clear, forState: .normal)
        messageButton.addTarget(self, action: #selector(self.messageButtonPressed), for: .touchUpInside)
        self.addSubview(messageButton)
    }
    
    func commentButtonPressed() {
        commentButton.isSelected = !commentButton.isSelected
    }
    
    func retweetButtonPressed() {
        retweetButton.isSelected = !retweetButton.isSelected
    }
    
    func favoriteButtonPressed() {
        favoriteButton.isSelected = !favoriteButton.isSelected
    }
    
    func messageButtonPressed() {
        messageButton.isSelected = !messageButton.isSelected
    }
}
