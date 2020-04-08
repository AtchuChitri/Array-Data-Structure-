import UIKit

// basically we have given an array and a value and we need to remove that value basically all instances of that particular value that's been given to us from the array.


//same like move Zero
//method 1
func removeElementInPlace(nums:[Int],val:Int)->Int{
    
    var nums = nums
    var index = 0
    for num in nums{
        
        if(num != val){//check is that value conatins val
            nums[index] = num
            index += 1// increament
        }
        
    }
    var fileIndex = index
    while fileIndex < nums.count{//add remaing the val to nums array
        nums[fileIndex] = val
        fileIndex += 1
    }
    print(nums)
    return index//new length

}
    
removeElementInPlace(nums: [0,1,2,2,3,0,4,2], val: 2)

