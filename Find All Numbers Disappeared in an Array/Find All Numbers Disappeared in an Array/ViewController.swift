//
//  ViewController.swift
//  Find All Numbers Disappeared in an Array
//
//  Created by 葛佳佳 on 2017/2/4.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let disappearedNumbers = Solution().findDisappearedNumbers([1, 1])
        print(disappearedNumbers)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///先创建一个数组，里面保存从1到n所有的数，然后遍历数组，将下标为nums[i]-1的数置为0，然后再遍历数组，不为0的数即是缺少的数
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var numArray = [Int]()
        if nums.count < 2 {
            return numArray
        }
        
        for i in 1...nums.count {
            numArray.append(i)
        }
        
        for i in 0..<nums.count {
            numArray[nums[i]-1] = 0
        }
        
        var retureArray = [Int]()
        
        for i in 0..<numArray.count {
            if numArray[i] != 0 {
                retureArray.append(numArray[i])
            }
        }
        return retureArray
    }
}
