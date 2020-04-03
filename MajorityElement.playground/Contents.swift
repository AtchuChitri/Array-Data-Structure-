import UIKit
import Foundation
//Given an array of size n, find the majority elements The majority element is the element that appears more then [n/2] times
// you may assume that the array is non empty and majority elelment always exists in the array\
// Example
//input [3,2,3]
//output : 3
//example 2
// input [2,2,1,1,1,2,2]
//output : 2


// Method 1
//Moore's Voting Algoritam
//Algorithm:
//Loop through each element and maintains a count of majority element, and a majority index, maj_index
//If the next element is same then increment the count if the next element is not same then decrement the count.
//if the count reaches 0 then changes the maj_index to the current element and set the count again to 1.
//Now again traverse through the array and find the count of majority element found.
//If the count is greater than half the size of the array, print the element
//Else print that there is no majority element

func findMajorityElement(arrayOfElm:[Int])->Int{
    
    var majorityEle = arrayOfElm.first
   // var gCounter:Int = 0
   // var index = -1
    var counter = 0

    for (_,ele) in arrayOfElm.enumerated(){
        
            if(majorityEle == ele){
            counter+=1
            }
            else{
                counter -= 1
            }
        if(counter == 0){
            majorityEle = ele
            counter  = 1
        }
    }
    //get the majority number
        return majorityEle!
    }
//check majority element n/2 condition
func isMajority(arrayOfElm:[Int],majorty:Int)->Bool{
    var count = 0
    
    for (index,_) in arrayOfElm.enumerated(){
        
        if(arrayOfElm[index] == majorty){
        count += 1
        }
        
    }
    if(count > (arrayOfElm.count)/2){
        
        return true
    }
    return false
  
}



func printMajority(arrayOfElm:[Int]){
    
    let major = findMajorityElement(arrayOfElm: arrayOfElm)
    if(isMajority(arrayOfElm: arrayOfElm, majorty: major)){
        print("Major value %d",major)
    }else{
        print("no Majority Elements")

    }
    
}

//print(printMajority(arrayOfElm: [3, 3, 4, 2, 4, 4, 2, 4]))

//Method 2

//Algorithm:
//Create a variable to store the max count, count = 0
//Traverse through the array from start to end.
//For every element in the array run another loop to find the count of similar elements in the given array.
//If the count is greater than the max count update the max count and store the index in another varaible.
//If the maximum count is greater than the half the size of the array, print the element. Else print there is no majority element.
func findMajorityElementM2<T:Numeric>(arrayOfElm:[T]){
    
    var   maxCount:Int = 0
    var index:Int = -1;
    for (idx,ele) in arrayOfElm.enumerated(){
        
        var count:Int = 0
        
        for (idx1,ele1) in arrayOfElm.enumerated(){
            
            if(arrayOfElm[idx1] == arrayOfElm[idx]){
                count += 1
            }
            
            
        }
        if(count > maxCount)
        {
            maxCount = count
            index = idx
        }
        
    }
    
    if (maxCount > (arrayOfElm.count)/2){
        
        print("majority Value",arrayOfElm[index])
        
    }else{
        print("no majority Item")
    }

    
    
}

findMajorityElementM2(arrayOfElm:[3, 3, 4, 2, 4, 4, 2, 4, 4])
