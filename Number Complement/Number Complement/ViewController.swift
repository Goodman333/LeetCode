//
//  ViewController.swift
//  Number Complement
//
//  Created by 葛佳佳 on 2017/2/1.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let num = Solution().findComplement(5)
        print(num)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    
    ///通过将给定的数右移来确定给定数的位数n，将1左移n次再减1，得到1...1，与给定的数异或，即得到给定数的相反数
    func findComplement(_ num: Int) -> Int {
        var temp = num
        var leftShift = 1
        
        while temp != 0 {
            leftShift = leftShift << 1
            temp = temp >> 1
        }
        
        return num^(leftShift - 1)
        
    }
}
