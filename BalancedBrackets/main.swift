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
    
    let red = d.reduce(0) { r, i in
        r + i
    }
    guard red == 0 else {
        return "NO"
    }
    for i in 0..<d.count {
        if d[i] < 0 && d[i] + d[i - 1] >= 1 {
            print(d[i])
            return "NO"
        }
    }
    return "YES"
}

print(isBalanced(s: "{{)[](}}"))

