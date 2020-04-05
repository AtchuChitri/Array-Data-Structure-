import UIKit

//Given a sorted array ums remove the duplicates such that duplicates appeared at most twice and retun the new length
// do npt allocate extra space for another array you must do this by modifying the input array with 0(1) extra memory
//method 1
func removeDuplicates(nums:[Int])-> Int{
    
    guard nums.count>2 else{
        return nums.count
    }
    
    var index = 1
    var nums = nums
    for i in 2..<nums.count{
        
        if(nums[index] != nums[index - 1] || nums[index] != nums[i]){
            index += 1
            nums[index] = nums[i]
        }
    }
    return index + 1
}

removeDuplicates(nums: [1 ,1 ,3 ,5 ,5 ,7])
