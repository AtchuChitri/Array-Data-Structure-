import UIKit

//Given Array nums write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements

//example input : [0,1,0,3,12] output : [1,3,12,0,0]

// note
//1. You must do this in place without making a copy of array
// 2. minimize the total number of operations

//Method 1
// Traverse the given array ‘arr’ from left to right. While traversing, maintain count of non-zero elements in array. Let the count be ‘count’. For every non-zero element arr[i], put the element at ‘arr[count]’ and increment ‘count’. After complete traversal, all non-zero elements have already been shifted to front end and ‘count’ is set as index of first 0. Now all we need to do is that run a loop which makes all elements zero from ‘count’ till end of the array.

func moveZero(nums:[Int])->[Int]{
    
    var nums = nums
    var index:Int = 0//index 0
    
    for (idx,ele) in nums.enumerated(){//traverse loop
        
        if(nums[idx] != 0){//check if element not as 0
            nums[index] = ele // then update the nums array with new element
            index += 1 // increment index
        }
    }
    while index < nums.count {// check index and nums count conatin 0 then add at last
        
        nums[index] = 0
        index += 1
        
    }
     return nums
    
}

moveZero(nums: [0,1,0,3,12])
