//
//  main.swift
//  BalancedBrackets
//
//  Created by slava bily on 07.12.2021.
//

import Foundation

func isBalanced(s: String) -> String {
    
    var d = [Int]()
    
    for i in s {
        switch i {
        case "{":
            d.append(1)
        case "[":
            d.append(2)
        case "(":
            d.append(3)
        case "}":
            d.append(-1)
        case "]":
            d.append(-2)
        case ")":
            d.append(-3)
        default:
            break
        }
    }
    print(d)
    
     
    return "YES"
}

print(isBalanced(s: "{[()]}"))

