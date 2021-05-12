//
//  File.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

// MVC 패턴

// view
func inputView() -> String {
    
    guard let value = readLine() else {
        return ""
    }
    return value
}

func outputView(value: Int) {
    for i in 1 ... 9 {
        print("\(value)" + " * " + "\(i)" + " = " + "\(i * value)")
    }
}

// controller
func stringToInt(value: String) -> Int {
    guard let value = Int(value) else {
        return 0
    }
    return value
}

func multiply(number: Int) -> Int {
    return number
}

func main() {
    // view
    let inputValue = inputView()
    
    // controller
    let intValue = stringToInt(value: inputValue)
    let result = multiply(number: intValue)
    
    // view
    outputView(value: result)
}

main()
