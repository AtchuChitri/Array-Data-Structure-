import UIKit

// check is array conation duplicate with distance

func containDuplicatesWithDistance(nums:[Int],K:Int)->Bool{
    
    //initiate dictionary
    var map = [Int : Int]()
    var minimumVal = Int.max
    //start loop
    for (index , ele) in nums.enumerated(){
        
        // check is element contain in dictionary
        if(map[ele] != nil){
            
            let previousIndex:Int = map[ele]!// get the previous index
            // find the gap b/w current and previous
            let gap = index - previousIndex
            
            //and check the min value with gap value
            minimumVal = min(gap, minimumVal)
            
        }
        map[ele] = index//store index into map dictionary
        
    }
    // check if minimum val less the or equal the return true
    if(minimumVal <= K){
        return true
    }
    
    return false
    
}

containDuplicatesWithDistance(nums: [1, 2, 3, 1, 4, 5], K: 3)
