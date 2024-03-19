import UIKit

// Sliding window
// it's an techinque solve array and string problems instead of mutiple for loop it help to solve by single loop
// The problem will be based on an array, list or string type of data structure.
// It will ask to find subranges in that array to give the longest, shortest or target values of a string.
// Its concept is mainly based on ideas like the longest sequence or shortest sequence of something that satisfies a given condition perfectly.



//1. MAXIMUM SUM SUBARRAY OF SIZE K
//Given an array of positive integers and a positive numberk, find the maximum sum of any contiguous subarray of size k.

//Input: [3, 5, 2, 1, 7], k=2
//Output: 8

// The subarray [1, 7] is the sum of the maximum sum.

let a = [2,9,31,-4,21,7]
let k = 3

func findMaxSub(_ a: [Int], k:Int) {
    var total = 0
    var index = 0
    var MaxVal = 0
    for j in 0 ..< a.count {
       total += a[j]
        if (j - index + 1) == k {
            MaxVal = max(MaxVal, total)
            total -= a[index]
            index += 1
        }
    }
    print(MaxVal)
}

findMaxSub(a, k: 3)

//2. COUNT OCCURRENCES OF ANAGRAM
//Given a word and a text, return the count of occurrences of the anagrams of the word in the text.

//Input: text = gotxxotgxdogt, word = got
// Output : 3
//Input: text = gotxxotgxdogt, word = got


func findAnagarm(text: String, word: String) -> Int {
    var p = [String:Int]()
    var s = [String:Int]()
    var i = 0
    var maxCount = 0
    for char in word {
        p.updateValue((p[String(char)] ?? 0) + 1, forKey: String(char))
    }
    for (index,char) in text.enumerated() {
        s.updateValue((s[String(char)] ?? 0) + 1, forKey: String(char))
        print(s)
        if(index - i + 1) == word.count {
            let array = Array(text)
            let at =  array[index - (word.count-1)]
            if s == p {
                maxCount += 1
            }
            i += 1
            s.removeValue(forKey: String(at))

        }
    }
    return maxCount
}
findAnagarm(text: "gotxxotgxdogt", word: "got")

//3. DIFFERENCE BETWEEN THE MAXIMUM AND MINIMUM AVERAGE OF ALL K-LENGTH CONTINUOUS SUBARRAYS
//Input: arr[ ] = {3, 8, 9, 15}, K = 2
// Output: 6.5

func getMinMaxDiff(arr: [Int], k:Int) -> Double {
    var minimum = 9999999999999.99999
    var maximum = 0.0
    var index = 0
    var total = 0.0
    for i in 0..<arr.count {
        total  += Double(arr[i])
        if (i - index + 1) == k {
            let val = total / Double(k)
            minimum = min(val, minimum)
            maximum = max(maximum, val)
            total -= Double(arr[index])
            index += 1
        }
    }
    return maximum - minimum
}

getMinMaxDiff(arr: [3, 8, 9, 15], k: 2)


//5. FIND DUPLICATES WITHIN A RANGE ‘K’ IN AN ARRAY
// ​Input: nums = [5, 6, 8, 2, 4, 6, 9]
// k = 2
// Ouput: False

func duplicateWithIn(nums: [Int], k:Int = 2) -> Bool {
    var count = 0
    var index = 0
    for i in 0..<nums.count {
        count += nums[i]
        if (i - index + 1) == k {
            if count/2 == 0 {
                return true
            }
            count -= nums[index]
            index += 1
        }
    }
    return false
}

duplicateWithIn(nums: [5, 6, 8, 2, 4, 6, 9])


// 6. FIND MINIMUM SUM SUBARRAY OF SIZE K
//Input: arr = [10, 4, 2, 5, 6, 3, 8, 1]
// k = 3
// Output: 11

func minimumSumSub(arr:[Int],k:Int=3) -> Int {
    var minimum = 99999999999
    var index = 0
    var total = 0
    for i in 0..<arr.count {
        total += arr[i]
        if (i - index + 1) == k {
            minimum = min(minimum, total)
            total -= arr[index]
            index += 1
        }
    }
    return minimum
}

minimumSumSub(arr: [10, 4, 2, 5, 6, 3, 8, 1])

///LENGTH OF THE LONGEST SUBSTRING THAT DOESN’T CONTAIN ANY VOWELS
///Input: s = "codeforintelligents"
// Output: 3
// Explanation: 'nts' is the longest substring that doesn't contain any vowels.

func longestSubString(str:String) -> String {
    let vowel = ["a","e","i","o","u"]
    var res = ""
    var maxRes = ""
    for i in str {
        if !vowel.contains(String(i)) {
            res = res + String(i)
            if res.count > maxRes.count {
                maxRes = res
            }
        } else {
            res = ""
        }
    }
    return maxRes
}

longestSubString(str: "codeforintelligents")
