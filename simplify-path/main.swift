//
//  main.swift
//  algor_swift
//
//  Created by aaaron7 on 16/4/6.
//  Copyright © 2016年 aaaron7. All rights reserved.
//

import Foundation


class Solution {
    func simplifyPath(path: String) -> String {
        var arr = path.componentsSeparatedByString("/")

        print(arr)
        var j = 0
        while j < arr.count{

            if arr[j] == "." || arr[j] == ""{
                arr.removeAtIndex(j)
            }else if arr[j] == ".."{
                arr.removeAtIndex(j)
                if j - 1 >= 0 {
                    arr.removeAtIndex(j-1)
                    j = j - 1
                }
            }else{
                j = j + 1
            }

        }
        return "/" + arr.joinWithSeparator("/")
    }
}

let s = Solution()


print(s.simplifyPath("/a/./b/../../c/"))


