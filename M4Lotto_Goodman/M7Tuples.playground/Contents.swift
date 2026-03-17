import UIKit

//Tuples: work with multiples values at once
//Can store values of different types
//Have fixed size
//can't grow or shrink
//can be accessed by index
let a = (1,"2",3.0)
a.0
a.1
a.2

var arr = [10,20,30]
arr[0]
arr[1]
arr[2]
arr.append(40)

//Unnamed Tuples
let scores = (100,90,75)
print(scores.0)
print(scores.1)
print(scores.2)
let (_, _, lastScores) = scores
//let (_, _, lastScores) = (scores.0, scores.1, scores.2)
print(lastScores)

//Named Tuples: by indexes and names
let studentScores = (math: 100, english: 90, science: 75)
let studentScores1: (math: Int, english: Int, science: Int) = (100,90,75)
print(studentScores.0)
print(studentScores.math)

//let(_, _, scienceProject) = studentScores
let(_, _, scienceProject) = (studentScores.math, studentScores.english, studentScores.science)
print(scienceProject)


//Q5.
let t = ("Swift", 5)
print(t.0)
print(t.1)

let nt1 = (language: "Swift", version: 5)
let nt2: (language: String, version: Int) = ( "Swift", 5)
print(nt2.language)
print(nt1.language)

//Q7.
var nt3 = (x: 10, y: 20)
nt3.y = 99
print(nt3.y)

//Q8.
let result = (tip: 8.0, total: 108.0, per: 54.0)
let (_, total, _) = result
print(total)
