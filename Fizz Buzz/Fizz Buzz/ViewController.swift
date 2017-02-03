//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by 葛佳佳 on 2017/2/3.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let array = Solution().fizzBuzz(15)
        print(array)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///先算3和5的公倍数，这样不用在else if里面再判断一个取余等于0，另一个不等于0的情况了，少写点东西
    func fizzBuzz(_ n: Int) -> [String] {
        var stringArray:Array<String> = []
        for i in 1 ..< (n + 1) {
            if (i % 3 == 0 && i % 5 == 0) {
                let string = "FizzBuzz"
                stringArray.append(string)
            }else if (i % 3 == 0) {
                let string = "Fizz"
                stringArray.append(string)
            }else if (i % 5 == 0) {
                let string = "Buzz"
                stringArray.append(string)
            }else {
                let string = String(i)
                stringArray.append(string)
            }
        }
        
        return stringArray
    }
}
