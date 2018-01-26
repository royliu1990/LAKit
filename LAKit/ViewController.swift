//
//  ViewController.swift
//  LAKit
//
//  Created by toshiba_osx on 2018/1/24.
//  Copyright © 2018年 toshiba_osx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        NSLog("asd" + "123")
        
        
        CGPoint((100,100)).makeDisc(50).easyAssign(superView: view, backgroundColor: .red)
        .leftToSuperView().bottomToSuperView().sizeEqual(value: 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

