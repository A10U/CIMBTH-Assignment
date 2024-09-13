import UIKit

func climbingStaircase(step : Int) -> Int {
    var tempA = 0
    var tempB = 1
    
    for _ in (0..<step) {
        let tempC = tempA + tempB
        tempA = tempB
        tempB = tempC
    }
    
    return tempB
}

//Example 1:
//Input
let ex1N = 2
//Output
climbingStaircase(step: ex1N)

//Example 2:
//Input:
let ex2N = 3
//Output:
climbingStaircase(step: ex2N)
