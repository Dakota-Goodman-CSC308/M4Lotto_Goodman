import UIKit

/*
 For Loops
 
 for loopConstant in Range/Collection{
 statement
 }
 */

//1. print number 1 through 10
for i in 1...10{
 //   i=2(x)
    print(i)
}

//2. sum numbers 1 to 10
var sum = 0
for i in 1...10{
    sum+=i
}

//3. sum odd numbers
for i in 1...10{
    if i%2 != 0{
        sumOdd += i
    }
}

//4. sum even numbers
for i in 1...10{
    if !i.isMultiple(of: 2){
        sumEven += i
    }
}
print(sumEven)


/*
 Arrays: a collection that stores values in order
 */

var arr: [Int] = [1,2,3,4,5]

//5. loop through an array
for num in arr{
    print(num)
}

//6. make an empty array and add numbers 1 to 100
var arr1 = [Int]()
// var arr2: [Int] = []

//7. Insert numbers
for num in 1...100{
    arr1.append(num)
    // arr1.insert(num, at:0)
}
print(arr1)
print(arr1.count)
arr1.removeAll()

//8. generate 100 random numbers
while arr1.count < 10{ //wildcard pattern
    let num = Int.random(in:0..<20)
    if !arr1.contains(num){
        arr1.append(num)
        if arr1.count == 10{
            break
        }
    }
}
print(arr1)
print(arr1.sorted())


