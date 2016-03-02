//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Jumpei Katayama on 3/2/16.
//  Copyright © 2016 Jumpei Katayama. All rights reserved.
//

import UIKit

public class CustomTabBar: UITabBarController {
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("hello")
    }
    
    /// Sets the center button with `image` and `highlitedImage`
    public func addCenterButtonWithImage(buttonImage: UIImage, highlightImage: UIImage) {
        let button = UIButton(type: .Custom)
        button.autoresizingMask = [UIViewAutoresizing.FlexibleRightMargin, UIViewAutoresizing.FlexibleLeftMargin, UIViewAutoresizing.FlexibleTopMargin, UIViewAutoresizing.FlexibleRightMargin]
        button.frame = CGRectMake(0, 0, buttonImage.size.width, buttonImage.size.height)
        button.setBackgroundImage(buttonImage, forState: UIControlState.Normal)
        button.setBackgroundImage(highlightImage, forState: UIControlState.Highlighted)
        
        let heightDifference = buttonImage.size.height - tabBar.frame.size.height
        if heightDifference < 0 {//buttonImage is smaller than tabbar frame
            button.center = self.tabBar.center
        } else {
            var center: CGPoint = tabBar.center
            center.y = center.y - heightDifference/2.0
            button.center = center
        }
        button.addTarget(self, action: "centerButtonTouched", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    public func centerButtonTouched() {
        print("centerButtonTouched")
    }

    
}
