//
//  ViewController.swift
//  KTResponsiveUI
//
//  Created by themisterholliday on 08/29/2017.
//  Copyright (c) 2017 themisterholliday. All rights reserved.
//

import UIKit
import KTResponsiveUI


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ktView = TestView(topInset: 10, leftInset: 10, width: 250, height: 250)
        ktView.backgroundColor = .red
        self.view.addSubview(ktView)
//        
//        let _1 = KTResponsiveView(origin: ktView.topLeftPoint(), width: 50, height: 50)
//        let _2 = KTResponsiveView(origin: ktView.topMidPoint(), width: 50, height: 50)
//        let _3 = KTResponsiveView(origin: ktView.topRightPoint(), width: 50, height: 50)
//        let _4 = KTResponsiveView(origin: ktView.leftMidPoint(), width: 50, height: 50)
//        let _5 = KTResponsiveView(origin: ktView.center, width: 50, height: 50)
//        let _6 = KTResponsiveView(origin: ktView.rightMidPoint(), width: 50, height: 50)
//        let _7 = KTResponsiveView(origin: ktView.bottomLeftPoint(), width: 50, height: 50)
//        let _8 = KTResponsiveView(origin: ktView.bottomMidPoint(), width: 50, height: 50)
//        let _9 = KTResponsiveView(origin: ktView.bottomRightPoint(), width: 50, height: 50)
//        
//        _1.backgroundColor = .yellow
//        _2.backgroundColor = .yellow
//        _3.backgroundColor = .yellow
//        _4.backgroundColor = .yellow
//        _5.backgroundColor = .yellow
//        _6.backgroundColor = .yellow
//        _7.backgroundColor = .yellow
//        _8.backgroundColor = .yellow
//        _9.backgroundColor = .yellow
//        
//        self.view.addSubview(_1)
//        self.view.addSubview(_2)
//        self.view.addSubview(_3)
//        self.view.addSubview(_4)
//        self.view.addSubview(_5)
//        self.view.addSubview(_6)
//        self.view.addSubview(_7)
//        self.view.addSubview(_8)
//        self.view.addSubview(_9)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

