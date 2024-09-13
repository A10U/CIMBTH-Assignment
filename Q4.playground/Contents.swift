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

// Answer Q4 Thai Language :

//- Why it is hard
//การทำความเข้าใจโจทย์ที่ให้มาถือเป็นเรื่องยากและสำคัญ

//- What kind of solution that you solve it
//ซึ่งวิธีการแก้ไขปัญหา
//1. ต้องจัดการกับตัวแปร String ทั้งสอง version โดยการ Split โดยใช้เครื่องหมาย “.” แล้วแปลงเป็น Int
//2. หา Max lenght เพื่อทำการวน Loop
//3. นำเอาค่า Int ที่แบ่งส่วนของทั้งสอง version ออกมาเพื่อนำไปเปรียบเทียบกัน
//    //get part of version
//        let partOfV1 = i < arrV1.count ? arrV1[i] : 0
//        let partOfV2 = i < arrV2.count ? arrV2[i] : 0
//4. นำมาค่าที่ได้จาก version1 กับ version2 มาเปรียบเทียบกัน
//    //compare part of value
//        if partOfV1 < partOfV2 {
//            return -1
//        } else if partOfV1 > partOfV2 {
//            return 1
//        }
//5. เมื่อนำค่ามาเปรียบเทียบจนหมด Max lenght แล้วไม่ได้คำตอบให้ return ค่าเป็น 0  ref : Big O ใช้ O(n) : linear link : https://www.borntodev.com/2020/03/21/big-o-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/ 

// Answer Q4 English Language :

//- Why it is hard
//Understanding the given questions is difficult and important.

//- What kind of solution that you solve it
//1. You must deal with both versions of the String variable by splitting it using the “.” symbol and converting it to Int.
//2. Find the Max lenght to loop.
//3. Take out the Int values ​​that are divided into both versions to compare.
//    //get part of version
//        let partOfV1 = i < arrV1.count ? arrV1[i] : 0
//        let partOfV2 = i < arrV2.count ? arrV2[i] : 0
//4. Compare the values ​​obtained from version1 and version2.
//    //compare part of value
//        if partOfV1 < partOfV2 {
//            return -1
//        } else if partOfV1 > partOfV2 {
//            return 1
//        }
//5. When all values ​​are compared with Max lenght and no answer is received, return the value as 0.
//
// ref : Big O ใช้ O(n) : linear link : https://www.borntodev.com/2020/03/21/big-o-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/ 
