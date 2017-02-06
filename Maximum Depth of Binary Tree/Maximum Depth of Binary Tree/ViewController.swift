//
//  ViewController.swift
//  Maximum Depth of Binary Tree
//
//  Created by 葛佳佳 on 2017/2/7.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let maxDepth = Solution().maxDepth(TreeNode.init(2))
        print(maxDepth)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/**
 * Definition for a binary tree node.
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if let node = root {
            return max(maxDepth(node.left), maxDepth(node.right)) + 1
        }else {
            return 0
        }
    }
}
