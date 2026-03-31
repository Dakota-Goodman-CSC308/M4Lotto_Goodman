//
//  Int+Lotto.swift
//  M4Lotto_Goodman
//
//  Created by Goodman, Dakota K. on 3/31/26.
//

import Foundation

extension Int{
    static func uniqueRandomNumber(in range: ClosedRange<Int>, count: Int) -> [Int]{
        var nums = [Int]()
        while nums.count < count {
            let rndNum = Int.random(in: 1...45)
            if !nums.contains(rndNum){
                nums.append(rndNum)
            }
        }
        nums.sort()
        return nums
    }
}
