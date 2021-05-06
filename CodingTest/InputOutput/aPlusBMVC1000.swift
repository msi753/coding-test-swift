//
//  newTest.swift
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

func outputView(value: Any) {
    print("\(value)")
}

// controller
func stringToArray(value: String) -> [String] {
    return value.components(separatedBy: " ")
}

func stringToInt(value: String) -> Int {
    guard let value = Int(value) else {
        return 0
    }
    return value
}

func sum(first: Int, second: Int) -> Int {
    return first + second
}

struct Model {
    let first: Int
    let second: Int
}

func main() {
    // view
    let inputValue = inputView()
    
    // controller
    let array = stringToArray(value: inputValue)
    let first = stringToInt(value: array[0])
    let second = stringToInt(value: array[1])
    
    // model
    let model = Model(first: first,
                      second : second)
    
    // controller
    let result = sum(first: model.first, second: model.second)
    
    // view
    outputView(value: result)
}

main()
