//
//  ViewController.swift
//  2048
//
//  Created by 李锐 on 16/9/5.
//  Copyright © 2016年 lirui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let startBtn = UIButton()
        startBtn.setTitle("开始游戏", forState: .Normal)
        startBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        startBtn.addTarget(self, action: #selector(ViewController.startGame), forControlEvents: .TouchUpInside)
        startBtn.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(startBtn)
        self.view.addConstraint(NSLayoutConstraint(item: startBtn, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: startBtn, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0))
    }
    
    func startGame() {
        let alertView = UIAlertController(title: "开始", message: "游戏要开始了，你准备好了吗", preferredStyle: .Alert)
        alertView.addAction(UIAlertAction(title: "Ready Go!", style: .Default, handler: { (action:UIAlertAction) in
            let nav = UINavigationController(rootViewController: MainViewController())
            self.presentViewController(nav, animated: true, completion: nil)
        }))
        self.presentViewController(alertView, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

