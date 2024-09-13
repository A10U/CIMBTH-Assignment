import UIKit

func compareVersion(version1: String, version2: String) -> Int{
    let arrV1 = version1.split(separator: ".")
    let arrV2 = version2.split(separator: ".")
    
    var i = 0
    
    let arrV1Count = arrV1.count
    let arrV2Count = arrV2.count
    
    while i < arrV1Count || i < arrV2Count {
        
        if i < arrV1Count && i < arrV2Count {
            if Int(arrV1[i])! < Int(arrV2[i])! {
                return -1
            }else if Int(arrV1[i])! > Int(arrV2[i])! {
                return 1
            }
        } else if i < arrV1Count {
            if Int(arrV1[i])! != 0 {
                return 1
            }
        } else if i < arrV2Count {
            if Int(arrV2[i])! != 0 {
                return -1
            }
        }
        
        i += 1
    }
    
    return 0
    
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
