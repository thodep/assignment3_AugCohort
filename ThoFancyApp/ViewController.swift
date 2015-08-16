//
//  ViewController.swift
//  ThoFancyApp
//
//  Created by tho dang on 2015-08-15.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hi from view Did Load")
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("hi from view Will Appear")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("hi from View Did Appear")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("hi from view Will Layout SubViews")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("hi from view Did LayOut Subviews")

    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("hi from view Will Disappear")
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("hi from view Did Disappear")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

