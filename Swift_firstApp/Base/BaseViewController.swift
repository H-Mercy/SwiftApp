//
//  BaseViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/4/30.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit
 var rootViewController :UIViewController?;

class BaseViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       
       
       
        
    }
    //判断第一启动
    func isFirstLaunch()->Bool{
        
        let hasBeenLaunched = "hasBeenLaunched"
        let isFirstLaunch = !UserDefaults.standard.bool(forKey: hasBeenLaunched)
        if isFirstLaunch {
            UserDefaults.standard.set(true, forKey: hasBeenLaunched)
            UserDefaults.standard.synchronize()
        }
        return isFirstLaunch;
        
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

