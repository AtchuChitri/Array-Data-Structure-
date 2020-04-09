import UIKit

//Check given string plandrome or not
//method 1 loop till last one
func palndromCheck(str:String)->Bool{
    //shor cut in swift
  //  let reversed = String(str.reversed())
    //

    var i = 0
    
    var j = str.count / 2 //half length
    print(j)
    while i < j {
        
        let startIndex = str.index(str.startIndex,offsetBy: i)//start index
        let endIndex = str.index(str.endIndex,offsetBy: -i-1)//end index
    
        if(str[startIndex] == str[endIndex]){//check last one and first same of not
            i += 1
        }else{
            return false // return false if not same
        }
    }
    return true
    
}
//method 2
// try reverse the gioven string & check both are same or not

func palndromCheck2(str:String)->Bool{
    
    var reverse = ""
    for char in str{
        
      reverse = "\(char)" + reverse
    }
    print(reverse)
    if(reverse == str){
        return true
    }
    
    return false
    
}
print(palndromCheck(str: "foo") ? "YES" : "FALSE")

