//: [Previous](@previous)

import Foundation

//链接：https://leetcode-cn.com/problems/daily-temperatures

//: [Next](@next)
//根据每日 气温 列表，请重新生成一个列表，对应位置的输出是需要再等待多久温度才会升高超过该日的天数。如果之后都不会升高，请在该位置用 0 来代替。

//例如，给定一个列表 temperatures = [73, 74, 75, 71, 69, 72, 76, 73]，你的输出应该是 [1, 1, 4, 2, 1, 1, 0, 0]。

//提示：气温 列表长度的范围是 [1, 30000]。每个气温的值的均为华氏度，都是在 [30, 100] 范围内的整数。

//func dailyTemperatures(_ T: [Int]) -> [Int] {
//    var resultAry: [Int] = []
//    var preIndex = 0
//    var preValue = 0
//
//    for (index, value) in T.enumerated() {
//        preValue = value
//        preIndex = index
//        print("preValue = \(preValue) preIndex = \(preIndex)")
//
//        for (seIndex, seVal) in  T.enumerated()  {
//            if seIndex > preIndex {
//                if seVal > value {
//
//                    resultAry.append(seIndex - preIndex)
//                    print("seVal = \(seVal) seIndex = \(seIndex)")
//                    print("-------\(resultAry)")
//
//                }
//            }
//        }
//
//    }
//
//    return resultAry
//}

//func dailyTemperatures(_ T: [Int]) -> [Int] {
//    var resultAry: [Int] = []
//    var preIndex = 0
//    var preValue = 0
//
//    for (index, value) in T.enumerated() {
//        preValue = value
//        preIndex = index
//        print("preValue = \(preValue) preIndex = \(preIndex)")
//
//        for (seIndex, seVal) in  T.enumerated()  {
//            if seIndex > preIndex {
//                if seVal > value {
//
//                    resultAry.append(seIndex - preIndex)
//                    print("seVal = \(seVal) seIndex = \(seIndex)")
//                    print("-------\(resultAry)")
//                    break
//                }
//            }
//        }
//
//    }
//
//    return resultAry
//}

func dailyTemperatures(_ T: [Int]) -> [Int] {
    var resultAry: [Int] = []
    var preIndex = 0
    var preValue = 0

    for (index, value) in T.enumerated() {
        preValue = value
        preIndex = index
        print("preValue = \(preValue) preIndex = \(preIndex)")
        
        for (seIndex, seVal) in  T.enumerated()  {
            if seVal > value {
                    
                resultAry.append(seIndex - preIndex)
 
                break
            }
            
            
        }

    }
    
    return resultAry
}

dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73])
