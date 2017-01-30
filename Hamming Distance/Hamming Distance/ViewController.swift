//
//  ViewController.swift
//  Hamming Distance
//
//  Created by 葛佳佳 on 2017/1/29.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let count = Solution().hammingDistance(x: 1, y: 4)
        print(count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    /// 假如数为num, num & (num - 1)可以快速地移除最右边的bit 1， 一直循环到num为0, 总的循环数就是num中bit 1的个数。
    func hammingDistance(x: Int, y: Int) -> Int {
        var xorValue = x^y
        var oneCount = 0
        while xorValue != 0 {
            oneCount += 1
            xorValue = xorValue&(xorValue-1)
        }
        return oneCount
        
    }
}
