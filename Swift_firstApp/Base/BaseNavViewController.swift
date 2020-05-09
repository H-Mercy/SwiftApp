//
//  BaseNavViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/10.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

class BaseNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
       
        
        if self.viewControllers.count>=1 {
            viewController.hidesBottomBarWhenPushed = true;
        }
        super .pushViewController(viewController, animated: animated);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
