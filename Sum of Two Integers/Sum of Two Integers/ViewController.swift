//
//  ViewController.swift
//  Sum of Two Integers
//
//  Created by 葛佳佳 on 2017/2/6.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let getSum = Solution().getSum(3, 3)
        print(getSum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///两个数相异或来表示不进位的和，而两个数相与并左移以为，如果不为0则表示需要进位，重复该步骤直到进位的标识符为0
    func getSum(_ a: Int, _ b: Int) -> Int {
        
        var sum = a
        var carry = b
        var tempB = b
        
        
        while (carry != 0) {
            carry = (sum&carry) << 1
            sum = sum^tempB
            tempB = carry
        }
        return sum
    }
}
