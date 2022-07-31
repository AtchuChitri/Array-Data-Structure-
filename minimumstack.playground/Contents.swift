// Stack (first in last out)

class stack{
    init() {
    }
    var stackObj = []
    
    func push(value: Int) {
        stackObj.append(value)
    }
    func pop() {
        stackObj.remove(at: 0)
        if stackObj.count> 0 {
            return stackObj[0]
        }
    }
    
    func getMinVal() {
        var minVal = 0
        for i in stackObj {
            if minVal < i || minVal == 0 {
                minVal = i
            }
        }
        return minVal
    }
}

let val = stack()
print("val")

