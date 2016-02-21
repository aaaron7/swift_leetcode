//
//  main.swift
//  RestoreIp
//
//  Created by aaaron7 on 16/2/20.
//  Copyright © 2016年 Madeline. All rights reserved.
//

import Foundation

class Solution {

    func calculate(s: String) -> Int {
        var sum = 0
        var num = 0
        var num1 = 0
        var sign = 1
        var preop : Character = " "


        for q:Character in s.characters{
            if q == "+" || q == "-" || q == "*" || q == "/"{

                if (preop != " "){

                    if (preop == "*"){
                        num = num1 * num
                    }else{
                        num = num1 / num
                    }
                    num1 = 0
                }

                if q == "+" || q == "-"{
                    sum = sum + num * sign
                    if q == "+"{
                        sign = 1
                    }else{
                        sign = -1
                    }
                    preop = " "
                }else{
                    preop = q
                    num1 = num
                }
                num = 0

            }else if q == " "{
                continue
            }else{
                num = num * 10 + Int(String(q))!
            }
        }

        if preop != " "{
            switch preop{
            case "*":
                num = num * num1
            case "/":
                num = num1 / num
            default:
                break
            }
        }

        sum += num*sign


        return sum
    }
}

let a = Solution()
print(a.calculate("3+2*2"))





