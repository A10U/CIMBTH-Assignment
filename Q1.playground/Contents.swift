import UIKit

func findMaxProfit(prices : [Int]) -> Int{
    var answer : Int = 0
    var minPrice : Int = Int.max
    for price in prices{
        answer = max(answer, price - minPrice)
        minPrice = min(minPrice, price)
    }
    return answer
}

func findMaxprofitStartDay(day: Int, prices: [Int]) -> Int{
    guard day > 0 && day < prices.count else {
        return 0//"Invalid Day"
    }
    
    let arrayOfPricesSliceDay = prices[(day-1)...(prices.count-1)] // using Range
    let pricesSliceDay = Array(arrayOfPricesSliceDay)
    return findMaxProfit(prices: pricesSliceDay)
}

//Example 1:
//Input:
let pricesEX1 = [7,1,5,3,6,4]
let answerEX1 = findMaxProfit(prices: pricesEX1)//findMaxprofitStartDay(day: 4, prices: prices)
//Output:
print("Output: \(answerEX1)")

//Example 2:
//Input:
let pricesEX2 = [7,6,4,3,1]
let answerEX2 = findMaxProfit(prices: pricesEX2)//findMaxprofitStartDay(day: 4, prices: prices)
//Output:
print("Output: \(answerEX2)")
