//
//  SecondViewController.swift
//  ThoFancyApp
//
//  Created by tho dang on 2015-08-16.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var randomPic: UIImageView!
   
    let images =
    [UIImage(named: "1.jpg")!,
     UIImage(named: "2.jpg")!,
     UIImage(named: "3.jpg")!,
     UIImage(named: "4.jpg")!,
     UIImage(named: "5.jpg")!,
     UIImage(named: "6.jpg")!,
     UIImage(named: "7.jpg")!]
    
    var index = 0
    let animationDuration: NSTimeInterval = 0.25
    let switchingInterval: NSTimeInterval = 3

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomPic.image = images[index++]
        animateImageView()
    }

    func animateImageView(){
        CATransaction.begin()

        CATransaction.setAnimationDuration(animationDuration)
        CATransaction.setCompletionBlock {
            let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(self.switchingInterval * NSTimeInterval(NSEC_PER_SEC)))
            dispatch_after(delay, dispatch_get_main_queue()) {
                self.animateImageView()
            }
        }
let transition = CATransition()
        transition.type = kCATransitionFromBottom
        randomPic.layer.addAnimation(transition, forKey: kCATransition)
        randomPic.image = images[index++]
        CATransaction.commit()
        index = index < images.count - 1 ? index + 1 : 0
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
