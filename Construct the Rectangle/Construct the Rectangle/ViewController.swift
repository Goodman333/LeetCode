//
//  ViewController.swift
//  Construct the Rectangle
//
//  Created by 葛佳佳 on 2017/2/7.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let constructRectangle = Solution().constructRectangle(2)
        print(constructRectangle)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///先找出所有能被数字整除的数，放入数组中，然后找数组中间的数，如果数组是奇数个，切中间的数不是数组最后一位，则该数是平方数，否则，返回数组中间的数和前一位
    func constructRectangle(_ area: Int) -> [Int] {
        
        var numArray = [Int]()
        
        if area < 2 {
            return [1, 1]
        }
        
        for i in 1...(area/2) {
            if area % i == 0 {
                numArray.append(i)
            }
        }
        
        numArray.append(area)
        
        let midCount = numArray.count / 2;
        if (numArray.count % 2 != 0 && midCount != numArray.count - 1) {
            return [numArray[midCount], numArray[midCount]]
        }else {
            return [numArray[midCount], numArray[midCount - 1]]
        }
    }
}
