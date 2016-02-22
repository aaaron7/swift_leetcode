//
//  main.swift
//  RestoreIp
//
//  Created by aaaron7 on 16/2/20.
//  Copyright © 2016年 Madeline. All rights reserved.
//

import Foundation

class Solution {
    func trap(height: [Int]) -> Int {
        var left = 0
        var leftMax = 0
        var right = height.count - 1
        var rightMax = 0
        var sum = 0
        while left < right{
            if height[left] > leftMax{
                leftMax = height[left]
            }

            if height[right] > rightMax{
                rightMax = height[right]
            }


            if leftMax < rightMax{
                sum += leftMax - height[left]
                left += 1
            }else{
                sum += rightMax - height[right];
                right -= 1
            }

        }
        return sum
    }
}

let a = Solution()
print(a.trap([4,2,3]))





