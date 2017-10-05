//
//  TwitterView.swift
//  KTResponsiveUI
//
//  Created by Craig Holliday on 9/8/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import KTResponsiveUI

class TwitterView: UIView {
    var userImageView: UIImageView!
    var nameLabel: UILabel!
    var handleLabel: UILabel!
    var timeLabel: UILabel!
    
    var tweetLabel: UILabel!
    var buttonView: TwitterButtonView!
    
    override func performLayout() {
        userImageView = UIImageView(leftInset: 14, topInset: 12, height: 56.25)
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        userImageView.image = #imageLiteral(resourceName: "userImage")
        userImageView.contentMode = .scaleAspectFill
        userImageView.clipsToBounds = true
        self.addSubview(userImageView)
        
        let fontSize = UIView.getValueScaledByScreenWidthFor(baseValue: 17)
        
        nameLabel = UILabel(origin: userImageView.topRightPoint(), leftInset: 10, width: 134, height: 18)
        nameLabel.textColor = .white
        nameLabel.font = UIFont.boldSystemFont(ofSize: fontSize)
        self.addSubview(nameLabel)
        
        // Setup NameLabel
        nameLabel.text = "Craig holliday"
        nameLabel.sizeToFit()
        
        handleLabel = UILabel(origin: nameLabel.topRightPoint(), leftInset: 2, height: 17)
        handleLabel.textColor = UIColor(red:0.53, green:0.60, blue:0.65, alpha:1.0)
        handleLabel.font = UIFont.boldSystemFont(ofSize: fontSize)
        self.addSubview(handleLabel)
        
        handleLabel.text = "@TheMrHolliday"
        handleLabel.sizeToFit()
        
        timeLabel = UILabel(origin: handleLabel.topRightPoint(), leftInset: 2, height: 17)
        timeLabel.textColor = UIColor(red:0.53, green:0.60, blue:0.65, alpha:1.0)
        timeLabel.font = UIFont.boldSystemFont(ofSize: fontSize)
        self.addSubview(timeLabel)
        
        timeLabel.text = " - 12h"
        timeLabel.sizeToFit()
        
        let width = UIView.getValueScaledByScreenWidthFor(baseValue: 375)
        let totalWidth = timeLabel.topRightPoint().x

        if totalWidth > width {
            let rightSpacing = UIView.getValueScaledByScreenWidthFor(baseValue: 10)
            handleLabel.frame.size.width = handleLabel.frame.width - (totalWidth - (width - rightSpacing))
            timeLabel.frame.origin = handleLabel.topRightPoint()
        }
        
        tweetLabel = UILabel(origin: nameLabel.bottomLeftPoint(), topInset: 2, width: 278)
        tweetLabel.textColor = .white
        tweetLabel.font = UIFont.systemFont(ofSize: fontSize)
        tweetLabel.numberOfLines = 0
        self.addSubview(tweetLabel)
        
        tweetLabel.text = "Just watched 'The Big Sick'. One of the most original films in years. You all need to see it. That is all 🍿95 Popcorns"
        tweetLabel.sizeToFit()
        
        buttonView = TwitterButtonView(origin: tweetLabel.bottomLeftPoint(), topInset: 12, width: tweetLabel.frame.width, height: 18)
        self.addSubview(buttonView)

        self.frame.size.height = buttonView.bottomLeftPoint().y + UIView.getValueScaledByScreenHeightFor(baseValue: 10)
        
        self.backgroundColor = UIColor(red:0.11, green:0.16, blue:0.21, alpha:1.0)
    }
}

