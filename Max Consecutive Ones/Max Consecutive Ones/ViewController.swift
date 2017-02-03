//
//  ViewController.swift
//  Max Consecutive Ones
//
//  Created by 葛佳佳 on 2017/2/3.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let count = Solution().findMaxConsecutiveOnes([1, 0, 1, 1, 1])
        print(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///将数组先合并成字符串，然后按0来分割成新的只包含1的数组，找出新数组中的最大值，得到最大值的位数即是连续1最多的个数
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var numString = ""
        for num in nums {
            numString.append(String(num))
        }
        
        let numsArray = numString.components(separatedBy: "0")
        let maxValue = numsArray.max()!
        
        return maxValue.characters.count
    }
}
