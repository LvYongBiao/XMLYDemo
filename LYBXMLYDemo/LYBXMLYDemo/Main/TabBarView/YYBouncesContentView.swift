//
//  YYBouncesContentView.swift
//  LYBXMLYDemo
//
//  Created by 吕永彪 on 2019/2/26.
//  Copyright © 2019年 dongao. All rights reserved.
//

import UIKit

class YYBouncesContentView: YYBasicContentView {
    public var durition = 0.3
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
    
    override func reselectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
    
    func bounceAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        impliesAnimation.values = [1.0 ,1.4, 0.9, 1.15, 0.95, 1.02, 1.0]
        impliesAnimation.duration = durition * 2
        impliesAnimation.calculationMode = kCAAnimationCubic
        imageView.layer.add(impliesAnimation, forKey: nil)
    }
}
