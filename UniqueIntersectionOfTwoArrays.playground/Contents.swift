import UIKit

//interSection 2 array's
//Give 2 array's write to compute their intersection

//method 1 swift high order functions
func findQniqueIntersection<T:Numeric>(interSectionArryA:[T],interSectionArryB:[T])->[T]{
    
    //find the intersection Array
    let interSectionArry = interSectionArryA.filter{ interSectionArryB.contains($0)}
//remove duplicate elements  use reduce
    let finalInterSection = interSectionArry.reduce([], { $0.contains($1) ? $0 : $0 + [$1] })

    return finalInterSection
}

findQniqueIntersection(interSectionArryA: [7, 1, 5, 2, 3, 6], interSectionArryB: [3, 8, 6, 20, 7])

// method 2
//use the Set and using intersection keyword
func inters<T:Hashable>(interSectionArryA:[T],interSectionArryB:[T])->[T]{
    
    var set1 = Set<T>()
    for item in interSectionArryA{
        
        set1.insert(item)
    }
    var set2 = Set<T>()

    for item1 in interSectionArryB{
        set2.insert(item1)
    }
    return Array(set1.intersection(set2))
}

inters(interSectionArryA: [7, 1, 5, 2, 3, 6], interSectionArryB: [3, 8, 6, 20, 7])
