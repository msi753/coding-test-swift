//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/31.
//

import Foundation

if let str = readLine() {
    let upperStr = str.uppercased()
    var dic = [String:Int]()
    for char in upperStr {
        if dic.keys.contains(String(char)) {
            if let value = dic[String(char)] {
                dic.updateValue(value+1, forKey: String(char))
            }
        } else {
            dic.updateValue(1, forKey: String(char))
        }
    }
    
    var result = [String]()
    for key in dic.keys {
        if dic[key] == dic.values.max()! {
            result.append(key)
        }
    }
    
    print(result.count > 1 ? "?" : "\(result[0])")
}

