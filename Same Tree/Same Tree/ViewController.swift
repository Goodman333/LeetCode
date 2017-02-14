//
//  ViewController.swift
//  Same Tree
//
//  Created by 葛佳佳 on 2017/2/14.
//  Copyright © 2017年 葛佳佳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = TreeNode.init(3)
        p.left = TreeNode.init(2)
        p.right = TreeNode.init(1)
        
        let q = TreeNode.init(3)
        q.left = TreeNode.init(2)
        q.right = TreeNode.init(1)
        
        let isSame = Solution().isSameTree(p, q)
        print(isSame)
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
    ///通过递归来比对左右子节点
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }else if (p == nil || q == nil || p?.val != q?.val) {
            return false
        }
        
        return (isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right))
        
    }
}
