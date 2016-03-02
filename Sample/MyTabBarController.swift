//
//  MyTabBarController.swift
//  CustomTabBar
//
//  Created by Jumpei Katayama on 3/2/16.
//  Copyright © 2016 Jumpei Katayama. All rights reserved.
//

import UIKit
import CustomTabBar

class MyTabBarController: CustomTabBar {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        self.addCenterButtonWithImage(UIImage(named: "atom")!, highlightImage: UIImage(named: "atom2")!)
    }
    
    override func centerButtonTouched() {
        // Add code for centerButton action
    }
    
}
