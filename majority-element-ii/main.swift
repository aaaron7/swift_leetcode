//
//  main.swift
//  SwiftTest
//
//  Created by wenjin on 2/22/16.
//  Copyright © 2016 wenjin. All rights reserved.
//

import Foundation


class Solution {
    func majorityElement(nums: [Int]) -> [Int] {
        var k : [Int:Int] = [:]
        var r : [Int] = []
        for x in nums{
            if k[x] == nil{
                k[x] = 1
            }else if (k[x] == -1){
                continue
            }else{
                k[x] = k[x]! + 1
            }
            
            if k[x] > nums.count/3{
                k[x] = -1
                r.append(x)
            }
        }
        return r
    }
}

let a = Solution()
print(a.majorityElement([5,5]))

