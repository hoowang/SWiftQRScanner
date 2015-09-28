//
//  ViewController.swift
//  SWiftQRScanner
//
//  Created by hooge on 15/9/28.
//  Copyright © 2015年 hoowang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openScanner(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "QRCodeScannerController", bundle: nil)
        let QRScannerControoler = storyboard.instantiateInitialViewController()

        presentViewController(QRScannerControoler!, animated: true, completion: nil)
    }

}

