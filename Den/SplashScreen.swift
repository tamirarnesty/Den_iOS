//
//  SplashScreen.swift
//  Den
//
//  Created by Tamir Arnesty on 2016-06-24.
//  Copyright © 2016 Tamir Arnesty. All rights reserved.
//

import Foundation
import UIKit

class SplashScreen: UIViewController {
    
    var timer = NSTimer()
    var time = 0
    
    @IBOutlet var splash: UIView!
    @IBOutlet var copyright: UILabel!
    @IBOutlet var lyon: UIImageView!
    
    func increaseTimer () {
        time += 1
        if (time == 5) {
            timer.invalidate()
            [self .performSegueWithIdentifier("splash", sender: self)]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.copyright.bringSubviewToFront(splash)
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(SplashScreen.increaseTimer), userInfo: nil, repeats: true)
    }
    
//    override func viewDidLayoutSubviews() {
//        lyon.alpha = 1
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(1, animations: { () -> Void in
//            self.lyon.alpha = 0
//            }, completion: { finished in
//                [self .performSegueWithIdentifier("splash", sender: self)]
//            })
//    }
    
    
}