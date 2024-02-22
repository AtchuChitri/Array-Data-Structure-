import UIKit
/* 1) Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates). You may return the answer in any order.

 

Example 1:

Input: words = ["bella","label","roller"]
Output: ["e","l","l"]
Example 2:

Input: words = ["cool","lock","cook"]
Output: ["c","o"]
 

Constraints:

1 <= words.length <= 100
1 <= words[i].length <= 100
words[i] consists of lowercase English letters.*/


/*Balanced strings are those that have an equal quantity of 'L' and 'R' characters.

Given a balanced string s, split it into some number of substrings such that:

Each substring is balanced.
Return the maximum number of balanced strings you can obtain.

 

Example 1:

Input: s = "RLRRLLRLRL"
Output: 4
Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
Example 2:

Input: s = "RLRRRLLRLL"
Output: 2
Explanation: s can be split into "RL", "RRRLLRLL", each substring contains same number of 'L' and 'R'.
Note that s cannot be split into "RL", "RR", "RL", "LR", "LL", because the 2nd and 5th substrings are not balanced.
Example 3:

Input: s = "LLLLRRRR"
Output: 1
Explanation: s can be split into "LLLLRRRR".
 

Constraints:

2 <= s.length <= 1000
s[i] is either 'L' or 'R'.
s is a balanced string.
 
 class Solution {
     func balancedStringSplit(_ s: String) -> Int {
         
     }
 }
 */




    func commonChars(_ words: [String]) -> [String] {
        guard words.count > 0 else { return [] }
            var copy = words
            var result = [String]()
            var counter = 0
            for ch in copy[0] {
                counter = 0
                for i in 0..<copy.count {
                    if let index = copy[i].firstIndex(of: ch) {
                        copy[i].remove(at: index)
                        counter += 1
                    }
                }
                if counter == copy.count {
                    result.append(String(ch))
                }
            }
            return result

        
        
        var firstWord = words[0]
        var copyWords = words
     var res = [String]()
        for char in firstWord {
            var count = 0
            for i in 0..<copyWords.count {
                if let index = copyWords[i].firstIndex(of: char) {
                    copyWords[i].remove(at: index)
                       count += 1
                   }
                }
            if count == copyWords.count {
                res.append(String(char))
            }
        }
        
        return res
        
    }

commonChars(["cool","lock","cook"])

/*
 2.
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

  

 Example 1:

 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
 Example 2:

 Input: nums1 = [1], m = 1, nums2 = [], n = 0
 Output: [1]
 Explanation: The arrays we are merging are [1] and [].
 The result of the merge is [1].
 Example 3:

 Input: nums1 = [0], m = 0, nums2 = [1], n = 1
 Output: [1]
 Explanation: The arrays we are merging are [] and [1].
 The result of the merge is [1].
 Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.
  

 Constraints:

 nums1.length == m + n
 nums2.length == n
 0 <= m, n <= 200
 1 <= m + n <= 200
 -109 <= nums1[i], nums2[j] <= 109
  

 Follow up: Can you come up with an algorithm that runs in O(m + n) time?
 */

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        let filter = Array(nums1.map{$0}.prefix(m) + nums2.map{$0}.prefix(n))
        nums1 = filter.sorted()
    }
var val = [1,2,3,0,0,0]
merge(&val, 3, [2,5,6], 3)

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums = nums.filter{$0 != val}
    return nums.count
   }
var val1 = [3,2,2,3]
removeElement(&val1, 3)


func removeDuplicates(_ nums: inout [Int]) -> Int {
     nums = Array(Set(nums))
    return nums.count
    }


/*
  3.
 
 Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be kept the same.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
 
 */


func removeDuplicates1(_ nums: inout [Int]) -> Int {
        var index = 0
    for num in nums {
        if index < 2 || nums[index - 2] != num {
                        nums[index] = num
                        index += 1
                    }
        
    }
    return index
    
    }
var nums = [1,1,1,2,2,3]

removeDuplicates1(&nums)

/*
 4.
 
 Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

Example 1:

Input: nums = [3,2,3]
Output: 3
Example 2:

Input: nums = [2,2,1,1,1,2,2]
Output: 2 */

func majorityElement(_ nums: [Int]) -> Int {
    var res = [String: Int]()
    for num in nums {
        if let val = res["\(num)"] {
            res["\(num)"]! += 1
        } else {
            res["\(num)"] = 1
        }
    }
    print(res)
    let maxNum = res.max(by:{$0.value < $1.value})

    return Int(maxNum?.key ?? "") ?? 0
}
majorityElement([3,3,4])

/* 
 5.
 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
 
 
 
 Example 1:

 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 Example 2:

 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]*/

func rotate(_ nums: inout [Int], _ k: Int) {
    

    for i in 0..<k {
        let last = nums.last
        nums.removeLast()
        nums.insert(last!, at: 0)
       
    }
    print(nums)
   
}
var roate = [1,2,3,4,5,6,7]

rotate(&roate, 3)
/*
 6.
 
 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

  

 Example 1:

 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
 
 */

func maxProfit(_ prices: [Int]) -> Int {
    
    var res =  prices //.map{$0}
    var minimum = Int(res.min() ?? 0)
    var  i = 0
    for (index , price) in res.enumerated() {
        print(index)
        print(price)
        if minimum == price {
            i += 1
        }
        if i == 0 {
            res.remove(at: index)
        }
        
    }
     guard let max = res.max() else { return 0 }

    return max - minimum
}

maxProfit([2,1,2,1,0,1,2])


/*
 
 7.
 
 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

 

Example 1:

Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
Example 2:

Input: intervals = [[1,4],[4,5]]
Output: [[1,5]]
Explanation: Intervals [1,4] and [4,5] are considered overlapping.*/


func merge(_ intervals: [[Int]]) -> [[Int]] {
    if intervals.count <= 1 {
        return intervals
    }
        
    let intervals = intervals.sorted(by: {$0[0] < $1[0]})
    var res = [[Int]]()
    res.append(intervals[0])
    for interval in intervals {
        let last = res.last!
        if interval[0] >= last[0] && interval[0] <= last[1] {
            print(res)
            res.removeLast()
            res.append([min(last[0], interval[0]), max(last[1], interval[1])])
        } else {
            res.append(interval)
        }
    }
    return res
    }
merge([[1,3],[2,6],[8,10],[15,18]])
