import UIKit

//Check is this array contain any duplicate values

func containsDuplicate<T:Hashable>(nums:[T])->Bool{
    
    var map = [T:T]()// take dictnary
    
    for item in nums{//loop the andcheck items
        
        if(map[item] != nil){//check item in map dictnary if exists then return true
            return true
        }else{
            map[item] = 1 as? T // append item as key value as 1
        }
    }
    return false
    
}

containsDuplicate(nums: [1, 2, 3, 4,1])
