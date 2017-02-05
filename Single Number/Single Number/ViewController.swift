//
//  ViewController.swift
//  Single Number
//
//  Created by 葛佳佳 on 2017/2/5.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let singleNum = Solution().singleNumber([1, 2, 3, 2, 3])
        print(singleNum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///通过异或的 交换律： a^b = b^a 结合律： (a^b)^c = a^(b^c) 且0和任何数异或都是本身，自己和自己异或为0，所以通过用0对数组里面所有元素进行异或，即可得出唯一的元素
    func singleNumber(_ nums: [Int]) -> Int {
        
        var singleNum = 0
        
        for num in nums {
            singleNum = singleNum^num
        }
        
        return singleNum
    }
}
