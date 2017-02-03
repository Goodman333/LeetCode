//
//  ViewController.swift
//  Nim Game
//
//  Created by 葛佳佳 on 2017/2/3.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let canWin = Solution().canWinNim(8)
        print(canWin)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///只要是4的倍数，那么先手就会输
    func canWinNim(_ n: Int) -> Bool {
        return (n % 4 != 0)
    }
}
