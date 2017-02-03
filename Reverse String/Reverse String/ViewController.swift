//
//  ViewController.swift
//  Reverse String
//
//  Created by 葛佳佳 on 2017/2/3.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let string = Solution().reverseString("alan")
        print(string)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///先将字符串中每个字符放入数组，然后通过反转数组到达反转字符串的目的
    func reverseString(_ s: String) -> String {
        var charactersArray:Array<Character> = []
        for character in s.characters {
            charactersArray.append(character)
        }
        charactersArray = charactersArray.reversed()
        var reversedString = ""
        for character in charactersArray {
            reversedString.append(character)
        }
        
        return reversedString
    }
}
