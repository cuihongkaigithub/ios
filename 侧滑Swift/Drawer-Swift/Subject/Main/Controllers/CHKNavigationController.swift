//
//  CHKNavigationController.swift
//  Drawer-Swift
//
//  Created by IOSDEV on 16/8/16.
//  Copyright © 2016年 COOL KAI. All rights reserved.
//

import UIKit

class CHKNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        NSNotificationCenter.defaultCenter().postNotificationName("push", object: self)
        super.pushViewController(viewController, animated: animated)
    }
    override func popViewControllerAnimated(animated: Bool) -> UIViewController? {
        NSNotificationCenter.defaultCenter().postNotificationName("pop", object: self)
        super.popViewControllerAnimated(animated)
        return self.viewControllers.last
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
