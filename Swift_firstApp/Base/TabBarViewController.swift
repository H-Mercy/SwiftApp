//
//  TableViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/4/30.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    /**/
    
    var _backView:UIView? = nil
    var items:NSArray = []
    let NameArr = ["首页","中心","其他"]
   
    let VCArr = [HomeViewController(),SecondViewController(),ThirdViewController(),LastViewController()]
    //初始化数组
    var NavVCArr:[NSObject] = [NSObject]()
    
    var nav:UINavigationController = UINavigationController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.CreatTabBar()
    }
    
    //创建tabBar
    func CreatTabBar()  {
        
       
        let  MainVC  = HomeViewController()
        MainVC.title = "首页"
        let MainNav = BaseNavViewController(rootViewController:MainVC)
        MainNav.tabBarItem.title = "首页"
        MainNav.tabBarItem.image = UIImage(named:"kj")

        
        let  ClassVC  = SecondViewController()
        ClassVC.title = "中心"
        let ClassNav = BaseNavViewController(rootViewController:ClassVC)
        ClassNav.tabBarItem.title = "中心"
        ClassNav.tabBarItem.image = UIImage(named:"net")

        
        let  CartVC  = ThirdViewController()
        CartVC.title = "其他"
        let CartNav = BaseNavViewController(rootViewController:CartVC)
        CartNav.tabBarItem.title = "其他"
        CartNav.tabBarItem.image = UIImage(named:"qt")

        let  LastVC  = LastViewController()
        LastVC.title = "尾页"
        let LastNav = BaseNavViewController(rootViewController:LastVC)
        LastNav.tabBarItem.title = "尾页"
        LastNav.tabBarItem.image = UIImage(named:"qt")
        
        // 添加工具栏
        items = [MainNav,ClassNav,CartNav,LastNav];
        self.viewControllers = items as? [UIViewController]
        
        self.tabBar.barTintColor = UIColor.clear
        self.tabBar.backgroundColor = UIColor.white
       
        
        
        
        
        
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
   


