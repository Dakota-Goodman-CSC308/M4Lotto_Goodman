import UIKit

/*
 Inheritance: subclass, superclass
 subclass can be inherited with all characteristics of superclass
 allow single inheritance only
 
 class sub_class: super_class{
 
 }
 */

class Man{
    var age: Int
    var weight: Double
    init(age: Int, weight: Double) {
        self.age = age
        self.weight = weight
    }
    func display(){
        print("age = \(age) and wieght = \(weight)")
    }
}

extension Man{
    func sayHello(){
        print("Hello, I am \(age) years old and weigh \(weight) kg")
    }
}

var man: Man = Man(age: 20, weight: 70)
man.display()
man.sayHello()

class Student: Man{
    var name: String
    
    init(name: String, age: Int, weight: Double) {
        self.name = name
        super.init(age: age, weight: weight)
    }
    
    override func display(){
        print("Name: \(name), Age: \(age), and Weight: \(weight)")
    }
}
var student: Student = Student(name: "John", age: 20, weight: 70)
student.display()

/*
 protocol: Blueprint of properties and methods
 
 protocol ProtocolName{
    properties
    methods
 }
 protocol: -able, datasource, delegate
 */

protocol Runnable{ //1. declare
    var x: Int{get set}
    func run()
}

class Woman: Runnable{ //2. adopt
    //3. conform
    var x: Int = 1
    func run(){
        print("running~")
    }
}

let runner = Woman()
print(runner.x)
runner.run()

protocol SomeProtocol{ //1.
    var x: Int{get set}
    func random() -> Int
}

class ProtoBox: SomeProtocol{ //2.
    //3.
    var x: Int = 0
    func random() -> Int {
        return Int.random(in: 0 ... 9)
    }
}

let p = ProtoBox()
print(p.x)
print(p.random())

class Ta: Student{
    
}

//class:class, protocol, protocol
//class:protocol, protocol, protocol
class Athlete: Man, Runnable{ //#2
    //#3
    var x: Int = 5
    func run() {
        print("Athlete running with x = \(x)")
    }
}
let athlete: Athlete = Athlete(age: 20, weight: 70)
athlete.display()
athlete.run()

//class: class, protocol, protocol
class PowerStudent: Student, Runnable, SomeProtocol{
    //Runnable
    var x: Int = 2
    
    override init(name: String, age: Int, weight: Double) {
        super.init(name: name, age: age, weight: weight)
    }
    func run(){
        print("PowerStudent running. x = \(x)")
    }
    //SomeProtocol
    func random() -> Int {
        return 7
    }
}

let ps = PowerStudent(name: "Alex", age: 19, weight: 60.0)
ps.display()
ps.run()
print(ps.random())

class Jogger: Runnable{
    var x: Int = 3
    func run() {
        print("Jogger running slowly. x = \(x)")
    }
}
let jogger: Jogger = Jogger()
jogger.run()

class DualBox: Runnable, SomeProtocol{
    var x: Int = 11
    func run() {
        print("DualBox running. x = \(x)")
    }
    func random() -> Int {
        return 9
    }
}
let db = DualBox()
db.run()
print(db.random())

//Q1.
class Animal{
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sound(){
        print("Some sound...")
    }
}
class Dog: Animal{
    override func sound() {
        print("\(name) says woof!")
    }
}

extension Animal{
    func info() -> String{
        return "\(name) is \(age) years old."
    }
}

let d = Dog(name: "Buddy", age: 3)
d.sound()
print(d.info())
