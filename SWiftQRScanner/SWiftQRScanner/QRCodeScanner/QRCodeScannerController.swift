//
//  QRCodeScannerController.swift
//  WKWeibo
//
//  Created by 王虎 on 15/9/16.
//  Copyright © 2015年 hoowang. All rights reserved.
//

import UIKit

class QRCodeScannerController: UIViewController {

    @IBOutlet weak var scanLineView: UIImageView!
    @IBOutlet weak var scanLineTopConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func CloseScanner(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        startScanAnimation()
    }

    private func startScanAnimation()
    {
        let basicAnimation = CABasicAnimation()
        basicAnimation.keyPath = "position.y"
        basicAnimation.toValue = scanLineView.bounds.height
        basicAnimation.fromValue = 0.0
        basicAnimation.duration = 1.0
        basicAnimation.repeatCount = MAXFLOAT
        basicAnimation.removedOnCompletion = false
        scanLineView.layer.addAnimation(basicAnimation, forKey: "")
        scanLineView.startAnimating()
    }

}
