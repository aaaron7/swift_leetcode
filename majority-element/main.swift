//
//  main.swift
//  SwiftTest
//
//  Created by wenjin on 2/22/16.
//  Copyright © 2016 wenjin. All rights reserved.
//

import Foundation


class Solution {
    func majorityElement(nums : [Int]) -> Int {
        var t : [Int : Int] = [:]
        for x in nums{
            if t[x] == nil{
                t[x] = 1
            }else{
                t[x] = t[x]! + 1
            }
            
            if t[x] > nums.count / 2 {
                return x
            }
        }
        return nums[0]
    }
}

let a = Solution()
print(a.majorityElement([6,5,5]))

