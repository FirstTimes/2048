//
//  MainViewController.swift
//  2048
//
//  Created by 李锐 on 16/9/5.
//  Copyright © 2016年 lirui. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "2048"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 255.0/255.0, green: 203.0/255.0, blue: 34.0/255.0, alpha: 1)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "setting"), style: .Plain, target: self, action: #selector(MainViewController.toSetting))
    }
    
    func toSetting() {
        self.navigationController?.pushViewController(SettingViewController(), animated: true)
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
