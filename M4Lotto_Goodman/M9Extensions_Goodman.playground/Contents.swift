import UIKit

/*
 extension: add new functionality to an existing type
 
 extension Type{
    properties(computed properties, type properties, stored properties(x))
    methods(type methods, instance methods)
    initializer
 }
 */

extension Double{
    var km: Double{self * 1000.0} //computed property
    var m: Double{self}
    var cm: Double{self / 100.0}
    var mm: Double{self / 1000.0}
    var tax: Double{self * 1.06}
    var discount: Double{self * 0.9}
}

100.tax
100.discount

5.0.km
5.0.m
5.0.cm
5.0.mm
5.0 * 1000.0
5.0 / 100
