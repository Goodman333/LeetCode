//
//  ViewController.swift
//  Keyboard Row
//
//  Created by 葛佳佳 on 2017/2/14.
//  Copyright © 2017年 葛佳佳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let findWords = Solution().findWords(["Hello", "Alaska", "Dad", "Peace"])
        print(findWords)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Solution {
    ///根据集合的无序性和互异性来判断给定的单词是否属于某一个集合
    func findWords(_ words: [String]) -> [String] {
        
        if words.count == 0 {
            return []
        }
        
        let firstRowSet:Set = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
        let secondRowSet:Set = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
        let thirdRowSet:Set = ["Z", "X", "C", "V", "B", "N", "M"]
        
        var returnArray = [String]()
        
        for word in words {
            
            var wordSet:Set<String> = []
            
            for charactor in word.characters {
                wordSet.insert(String(charactor).uppercased())
            }
            if wordSet.isSubset(of: firstRowSet) || wordSet.isSubset(of: secondRowSet) || wordSet.isSubset(of: thirdRowSet) {
                returnArray.append(word)
            }
        }
        
        return returnArray
    }
}
