import UIKit

//main idea behind this is to handle multple of 3 and multiple of 5 spapartely but handaling of both 3 and 5 before them idiviually if n is less or equal to 0 the return

//method 1

func getFizBuzz(n:Int){
    
    for i in 1...n{//loop till n
        
        if i%3 == 0  && i%5 == 0 {//check module devide by 3 & 5
            print("Fizz Buzz")
        }
       else if i%3 == 0 { //check module devide by 3
            print("Fizz")
        }
        else if i%5 == 0 {//check module devide by 5
            print("Buzz")
        }
        else{
            print(i)
        }
    }
    
}
getFizBuzz(n: 15)

