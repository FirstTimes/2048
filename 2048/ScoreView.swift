//
//  ScoreView.swift
//  2048
//
//  Created by 李锐 on 16/9/6.
//  Copyright © 2016年 lirui. All rights reserved.
//

import UIKit

enum ScoreType {
    case Common  //普通分数
    case Best    //最高分
}

protocol ScoreViewProtocol {
    func changeScore(value s:Int)
}

class ScoreView: UIView, ScoreViewProtocol {
    
    
    var label:UILabel!
    //let defaultFrame = CGRectMake(0, 0, 100, 30)
    
    var type:String!
    
    var score:Int = 0{
        didSet{
            label.text = type + ":" + "\(score)"
        }
    }
    
    init(frame: CGRect, type:ScoreType) {
        label = UILabel()
        super.init(frame: frame)
        self.backgroundColor = UIColor.orangeColor()
        label.font = UIFont.systemFontOfSize(16)
        label.textColor = UIColor.whiteColor()
        label.textAlignment = .Center
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .Left, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .Right, relatedBy: .Equal, toItem: self, attribute: .Right, multiplier: 1, constant: 0))
        
        self.type = (type == ScoreType.Common) ? "分数" : "最高分"
    }
    
//    init(type:ScoreType){
//        label = UILabel(frame: defaultFrame)
//        label.textAlignment = .Center
//        super.init(frame: defaultFrame)
//        self.type = (type == ScoreType.Common) ? "分数" : "最高分"
//        self.backgroundColor = UIColor.orangeColor()
//        label.font = UIFont.systemFontOfSize(16)
//        label.textColor = UIColor.whiteColor()
//        self.addSubview(label)
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func changeScore(value s: Int) {
        score = s
    }

}
