//
//  ViewController.swift
//  Add Digits
//
//  Created by 葛佳佳 on 2017/2/7.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let addDigits = Solution().addDigits(111)
        print(addDigits)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///将传入的数字转成字符串再拆分，进行累加，和进行递归，直到和小于10
    func addDigits(_ num: Int) -> Int {
        
        let numString = String(num)
        var singleNumArray = [Int]()
        for character in numString.characters {
            let characterString = String(character)
            singleNumArray.append(Int(characterString)!)
            
        }
        
        var sum = singleNumArray.reduce(0, {$0 + $1})
        if sum > 9 {
            sum = addDigits(sum)
        }
        
        return sum
    }
}
