import UIKit

func compareVersion(version1: String, version2: String) -> Int{
    
    // Split "." and map to Int value of array
    let arrV1 = version1.split(separator: ".").map { Int($0)! }
    let arrV2 = version2.split(separator: ".").map { Int($0)! }
    
    // compare to get max lenght
    let maxLength = max(arrV1.count, arrV2.count)
    
    for i in 0..<maxLength {
        //get part of version
        let partOfV1 = i < arrV1.count ? arrV1[i] : 0
        let partOfV2 = i < arrV2.count ? arrV2[i] : 0
        
        //compare part of value
        if partOfV1 < partOfV2 {
            return -1
        } else if partOfV1 > partOfV2 {
            return 1
        }
    }
    
    return 0 //if they are equal
    
}

//Example 1:
//Input:
let ex1Version1 = "1.2", ex1Version2 = "1.10"
//Output:
compareVersion(version1: ex1Version1, version2: ex1Version2)

//Example 2:
//Input:
let ex2Version1 = "1.01", ex2Version2 = "1.001"
//Output:
compareVersion(version1: ex2Version1, version2: ex2Version2)

//Example 3:
//Input:
let ex3Version1 = "1.0", ex3Version2 = "1.0.0.0"
//Output:
compareVersion(version1: ex3Version1, version2: ex3Version2)
