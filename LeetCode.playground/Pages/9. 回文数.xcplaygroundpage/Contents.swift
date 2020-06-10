//: [Previous](@previous)

import Foundation

//链接：https://leetcode-cn.com/problems/palindrome-number/solution/hui-wen-shu-by-leetcode-solution/


isPalindrome(-133)

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }

    return true
}

//最初思路，排除负数，以数组的形式，偶数位，奇数位，收尾元素是否相等。


isPalindrome2(1234543)

func isPalindrome2(_ x: Int) -> Bool {
      let str: String = String(x)
      return String(str.reversed()) == str
}
//然后想到了，做成swift,reverse(),可以在不为其元素分配新空间的情况下对集合进行反向操作,本质是一个双向索引的集合，该方法始终是惰性的
// reverse() 是 Swift 3 之前的 API，返回的是一个 [Character]，复杂度是 O(N)。到了 Swift 3，这个方法改为了 reversed()，复杂度也变成了 O(1)，返回的是 ReversedCollection<String.CharacterView>
//复杂度：O（1）,当然这个不符合题目的建议，实际有点类似于coby on write，只有当真正使用到时才会复杂度变成n，相当于延迟


func isPalindrome3(_ x: Int) -> Bool {
    if x < 0 || x % 10 == 0 && x != 0 {
        return false
    }
    
    var value = x
    var reverse = 0
    
    while value > reverse {
        reverse = value % 10 + reverse * 10
        value /= 10
    }
    
    return value == reverse || value == reverse / 10
}

isPalindrome3(12321)



//参考后
//排除能被10整除，还有0
//然后去一半作为翻转再遍历
//核心点在于，对于数字 1221，如果执行 1221 % 10，我们将得到最后一位数字 1，要得到倒数第二位数字，我们可以先通过除以 10 把最后一位数字从 1221 中移除，1221 / 10 = 122，再求出上一步结果除以 10 的余数，122 % 10 = 2，就可以得到倒数第二位数字。如果我们把最后一位数字乘以 10，再加上倒数第二位数字，1 * 10 + 2 = 12，就得到了我们想要的反转后的数字。如果继续这个过程，我们将得到更多位数的反转数字。

//现在的问题是，我们如何知道反转数字的位数已经达到原始数字位数的一半？

//由于整个过程我们不断将原始数字除以 10，然后给反转后的数字乘上 10，所以，当原始数字小于或等于反转后的数字时，就意味着我们已经处理了一半位数的数字了。
