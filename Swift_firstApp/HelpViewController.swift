//
//  HelpViewController.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/7.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit
let width:CGFloat = 375;
let height:CGFloat = 668;
var isFirst:Bool = true;

class HelpViewController: UIViewController,UIScrollViewDelegate {
    var pageControl:UIPageControl?//分页
    var tmpSV:UIScrollView?
    var timeButton: UIButton!//计时器的显示button
    
   var homeButton: UIButton!//进入主页button
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         self.view.backgroundColor = UIColor.green;
        
        self.setScrollView();
        self.setPageControl();
        
        homeButton = UIButton(frame: CGRect(x: self.view.frame.width/2-60, y: self.view.frame.height-150, width: 120, height: 50));
        homeButton.backgroundColor = UIColor.lightGray;
        homeButton.setTitleColor(UIColor.white, for: .normal);
        homeButton.setTitle("立即体验", for:.normal);
        homeButton.addTarget(self, action:#selector(self.GoHome), for:.touchUpInside);
        homeButton.isHidden = true;
        self.view .addSubview(homeButton);
    }
    
    func setScrollView() {
        var scrollView = UIScrollView()
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 20, width: SCREEN_WIDTH, height: self.view.frame.size.height));
        //设置内容大小
        scrollView.contentSize = CGSize(width: CGFloat(width * 6), height: 150)
        //设置起始偏移量
        scrollView.contentOffset = CGPoint(x: 0, y: 0)
        //隐藏水平指示条
        scrollView.showsHorizontalScrollIndicator = false
        //隐藏竖直指示条
        scrollView.showsVerticalScrollIndicator = false
        //开启分页效果
        scrollView.isPagingEnabled = true;
        //设置代理
        scrollView.delegate = self
        
        self.view.addSubview(scrollView)
        
        tmpSV = scrollView
        
        let colors:[UIColor] = [UIColor.red,UIColor.orange,UIColor.yellow,UIColor.green,UIColor.blue,UIColor.purple]
        for i in 0..<6 {
            let tmpView:UIView = UIView(frame: CGRect(x: width * CGFloat(i), y: 0, width: width, height: self.view.frame.size.height));
            tmpView.backgroundColor = colors[i]
            scrollView.addSubview(tmpView)
        }
    }
    
    func setPageControl() {
        pageControl = UIPageControl(frame: CGRect(x: self.view.center.x - 60, y: self.view.frame.size.height-80, width: 120, height: 20));
        //设置显示的页数
        pageControl?.numberOfPages = 6
        //设置显示的起始页的索引
        pageControl?.currentPage = 0;
        //设置单页时隐藏
        pageControl?.hidesForSinglePage = true;
        //设置显示颜色
        pageControl?.currentPageIndicatorTintColor = UIColor.green;
        //设置页背景指示颜色
        pageControl?.pageIndicatorTintColor = UIColor.lightGray;
       
       
        self.view.addSubview(pageControl!);
        
    }
    
    
    //scrollView Delegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.x / width
        pageControl!.currentPage = Int(offset);
            if pageControl!.currentPage==5 {
                if isFirst  {
                    homeButton.isHidden = false;
                     isFirst = false;
            }
            
        }
       
       
    }
    @objc func GoHome() {

 //更换控制器进入到主页
        changeControl(type:1);
        //首次启动上传设备情况
       
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func getDeveiceInfo() -> (Dictionary<NSObject, NSObject>) {
        //
        var DeveiceInfo: [String : NSObject] = [String : NSObject]();
        let deveiceName = UIDevice.current.name;//设备名
        
       
        
        
        
        
        return DeveiceInfo as (Dictionary<NSObject, NSObject>);
    }
}
