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
        print("hi from viewDidLoad")
        
    }
    override func viewWillAppear(animated: Bool) {
        print("hi from viewWillAppear")
    }
    override func viewDidAppear(animated: Bool) {
        print("hi from ViewDidAppear")
    }
    override func viewWillLayoutSubviews() {
        print("hi from viewWillLayoutSubViews")
    }
    override func viewDidLayoutSubviews() {
        print("hi from viewDidLayOutSubviews")

    }
    override func viewWillDisappear(animated: Bool) {
        print("hi from viewWillDisappear")
    }
    override func viewDidDisappear(animated: Bool) {
        print("hi from viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

