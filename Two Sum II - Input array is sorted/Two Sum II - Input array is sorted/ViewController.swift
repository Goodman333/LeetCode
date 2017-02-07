//
//  ViewController.swift
//  Two Sum II - Input array is sorted
//
//  Created by 葛佳佳 on 2017/2/7.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let twoSum = Solution().twoSum([1, 2, 3, 4, 5, 6], 11)
        print(twoSum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///通过从两边不断向中间推进的方式来查找和为目标数的两个数
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        if numbers.count == 0 {
            return []
        }
        
        var index1 = 0
        var index2 = numbers.count - 1
        
        while (index1 < index2) {
            if numbers[index1] + numbers[index2] == target {
                return [index1 + 1, index2 + 1]
            }else if numbers[index1] + numbers[index2] > target {
                index2 -= 1
            }else {
                index1 += 1
            }
        }
        
        return []
    }
}
