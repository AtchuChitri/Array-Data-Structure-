
//Q) Max Consecutive Ones
//Given a binary array, find the maximum number of consecuitve 1s in this Array
// Example input [1,1,0,1,1,1]
//output 3
//Explanation : The First two digits or the three digits are consecutive 1s
//The maximum number of consecutive 1s is 3


import Foundation



func findMaxConsecutiveOnes(binaryArray:[Int])->Int{
    
    var maxNumber:Int = 0//maxConsecutive count
    var localIncrement:Int = 0 // to check 1s and increment
    
    for item in binaryArray{
        
        
        if(item == 1){//check if item is 1
            
            localIncrement = localIncrement + 1//then increment
            maxNumber = max(localIncrement, maxNumber) // find the max value
        }else{
            localIncrement = 0 // reset to 0
        }
        
        
    }
    return maxNumber//return max consecutive number
}

findMaxConsecutiveOnes(binaryArray: [1,1,0,1,1,1])
