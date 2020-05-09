//
//  SecondOtherViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/5/21.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

class SecondOtherViewController: BaseViewController {
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         self.navigationController?.navigationBar.isTranslucent=false;
        self.view.backgroundColor = UIColor.white;
        
        for index in 0..<3{
            
            let button = UIButton(frame: CGRect(x:((SCREEN_WIDTH-30)/3)*CGFloat(index)+15, y: 20, width:(SCREEN_WIDTH-60)/3, height: 30));
            
            if index==0{
                button .setTitle("首页", for: .normal);
            }else if index==1{
                button .setTitle("精彩ing~", for: .normal);
            }else{
                button .setTitle("我的", for: .normal);
               
            }
            button .setTitleColor(UIColor.black, for: .normal);
             button .setTitleColor(UIColor.blue, for: .selected);
            button.tag = index+100;
            
            self.view.addSubview(button);
            

        
        }
        
    }

}
