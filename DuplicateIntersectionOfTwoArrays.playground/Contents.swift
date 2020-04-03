import UIKit

//interSection 2 array's
//Give 2 array's write to compute their intersection

//method 1 swift high order functions

//method 1 swift high order functions
func findIntersection<T:Numeric>(interSectionArryA:[T],interSectionArryB:[T])->[T]{
    
    //find the intersection Array
    let interSectionArry = interSectionArryA.filter{ interSectionArryB.contains($0)}

    return interSectionArry
}

findIntersection(interSectionArryA: [7, 1, 5, 2, 3, 6], interSectionArryB: [3, 8, 6, 20, 7])

//method 2

//Basic Idea is to first over large array and put num and it's frequenta(times it's present) in desctnary. then loop over second array to check if number exists in dictnary if it does exists in dictnary then put in result array and reduce freq count by 1 check if freq is 0 then remove item

func findIntersect(largeArr:[Int],smallArr:[Int])->[Int]{
    
    var map = [Int : Int]()
    var result = [Int]()
    
    for num in largeArr{
        if(map[num] != nil){
            map[num]! += 1
            
        }else{
            map[num] = 1
        }
    }
    
    for num in smallArr{
        if(map[num] != nil){
            result.append(num)
            map[num]! -= 1
            if(map[num] == 0){
                map[num] = nil
            }
        }
    }
    
    return result
}

func inter(nums1:[Int],nums2:[Int])->[Int]{
    
    var result = [Int]()
    if(nums1.count > nums2.count){
        result = findIntersection(interSectionArryA: nums1, interSectionArryB: nums2)
    }else{
        result = findIntersection(interSectionArryA: nums2, interSectionArryB: nums1)
    }
    return result
}

inter(nums1: [7, 1, 5, 2, 3, 6], nums2: [3, 8, 6, 20, 7])
