//
//  ViewController.swift
//  Invert Binary Tree
//
//  Created by 葛佳佳 on 2017/2/7.
//  Copyright © 2017年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let treeNode = TreeNode.init(3)
        treeNode.left = TreeNode.init(2)
        treeNode.right = TreeNode.init(1)
        
        let invertTree = Solution().invertTree(treeNode)
        print(invertTree!.left!.val)
        
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
    ///通过递归来交换左右子节点
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if let treeNode = root {
            let left = invertTree(treeNode.left)
            let right = invertTree(treeNode.right)
            treeNode.left = right
            treeNode.right = left
            return treeNode
        }else {
            return nil
        }
    }
}
