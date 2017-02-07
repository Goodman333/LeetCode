//
//  ViewController.swift
//  Move Zeroes
//
//  Created by 葛佳佳 on 2017/2/7.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var nums = [0, 1, 0, 3, 12]
        Solution().moveZeroes(&nums)
        print(nums)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let originalCount = nums.count
        
        var i = 0
        var zeroNum = 0
        
        for num in nums {
            if num == 0 {
                nums.remove(at: i - zeroNum)
                zeroNum += 1
            }
            i += 1
        }
        let newCount = nums.count
        
        for _ in 0..<originalCount - newCount {
            nums.append(0)
        }
    }
}
