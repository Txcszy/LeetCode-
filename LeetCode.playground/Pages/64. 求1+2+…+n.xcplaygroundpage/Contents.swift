//: [Previous](@previous)

import Foundation
//:  ## 求1+2+…+n，要求不能使用乘除法、for、while、if、else、switch、case等关键字及条件判断语句（A?B:C）
//: ### 示例 1：
//输入: n = 3
//输出: 6
//: ### 示例 2：
//输入: n = 9
//输出: 45


//看到这个题目的第一反应就是（n + 1）n / 2，但是题目限制用不了
//然后就想到了递归，看了下LeetCode上有两种swift的解法，其实核心都是递归，方法一设了个全局变量，方法二&&后跟着是函数，个人感觉还是二好点

var result = 0

func sumNums(_ n: Int) -> Int {
    result += n

    n > 0 && sumNums(n - 1) > 0
    return result
}

print(sumNums(5))


func sumNums2(_ n: Int) -> Int {
    var sum = n
    (n > 0) && {sum += sumNums2(n - 1); return true}()
    return sum;
}

sumNums2(5)
