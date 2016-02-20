//
//  main.swift
//  RestoreIp
//
//  Created by aaaron7 on 16/2/20.
//  Copyright © 2016年 Madeline. All rights reserved.
//

import Foundation

print("Hello, World!")


class Solution {

    func restoreIpAddresses(s: String) -> [String] {
        if s.characters.count < 4{
            return []
        }

        helper(s, 0, "")
        return solution
    }


    var solution : [String] = []


    func helper(original : String, _ depth : Int, _ preSolu : String) -> String?{

        var solu = ""

        if depth == 3 {
            if !isValid(original){
                return nil
            }else{
                let s = String((preSolu + "." + original).characters.dropFirst(1))
                solution.append(s)
                return original
            }


        }

        solu.append(original.characters.first!)

        var lastString = String(original.characters.dropFirst(1))

        if lastString == ""{
            return nil
        }

        var rest  = helper(lastString, depth + 1 , preSolu + "." + solu)

        while rest == nil || Int(solu)! < 255{

            solu.append(lastString.characters.first!)

            if !isValid(solu){
                return nil
            }

            lastString = String(lastString.characters.dropFirst(1))

            if lastString == ""{
                return nil
            }

            rest  = helper(lastString, depth + 1,preSolu + "." + solu)
        }
        return solu + "." + rest!
    }

    func isValid(s : String) -> Bool{

        let number = Int(s)

        if number == nil{
            return false
        }

        if number! > 255{
            return false
        }

        if s.characters.count > 1 && s.characters.first! == "0"{
            return false
        }

        return true
    }

    func strip0(var s : String) -> String{
        if s.characters.count <= 1{
            return s
        }

        while s.characters.first! == "0"{
            s = String(s.characters.dropFirst(1))

            if s.characters.count <= 1{
                return s
            }
        }

        return s
    }


}

let a = Solution()
print(a.restoreIpAddresses("25525511135"))



