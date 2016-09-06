//
//  MainViewController.swift
//  2048
//
//  Created by 李锐 on 16/9/5.
//  Copyright © 2016年 lirui. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var screenWidth = UIScreen.mainScreen().bounds.size.width
    
    var dimension:Int = 4
    var maxnumber:Int = 2048
    
    var width:CGFloat = 80
    var padding:CGFloat = 10
    
    var backgroundViews:[UIView] = [UIView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "2048"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 255.0/255.0, green: 203.0/255.0, blue: 34.0/255.0, alpha: 1)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "setting"), style: .Plain, target: self, action: #selector(MainViewController.toSetting))
        
        initGameView()
    }
    
    func initGameView() {

        let scoreViewX:CGFloat = (screenWidth - width * CGFloat(dimension) - padding * CGFloat(dimension-1)) * 0.5
        let scoreViewY:CGFloat = 80
        let scoreViewW:CGFloat = width * 2
        let scoreViewH:CGFloat = 40

        let commonScoreView = ScoreView(frame: CGRectMake(scoreViewX, scoreViewY, scoreViewW, scoreViewH), type: .Common)
        commonScoreView.changeScore(value: 0)
        self.view.addSubview(commonScoreView)
        
        let bestScoreView = ScoreView(frame: CGRectMake(screenWidth - scoreViewX - scoreViewW, scoreViewY, scoreViewW, scoreViewH), type: .Best)
        bestScoreView.changeScore(value: 0)
        self.view.addSubview(bestScoreView)
        
        
        var x:CGFloat = (screenWidth - width * CGFloat(dimension) - padding * CGFloat(dimension-1)) * 0.5
        var y:CGFloat = 200
        
        for _ in 0..<dimension {
            y = 150
            for _ in 0..<dimension {
                let backgroundView = UIView(frame: CGRectMake(x, y, width, width))
                backgroundView.backgroundColor = UIColor.darkGrayColor()
                self.view.addSubview(backgroundView)
                backgroundViews.append(backgroundView)
                y += padding + width
            }
            x += padding + width
        }
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
