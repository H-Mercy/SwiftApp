//
//  HomeViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/10.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //取消从状态栏下固定视图
        self.navigationController?.navigationBar.isTranslucent=false;
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white;
        sqliteManager.shareManager().openDB(DBName: "cfg.db")
        sqliteManager.shareManager().selectData();
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
