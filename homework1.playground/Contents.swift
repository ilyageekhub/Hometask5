import Foundation
import PlaygroundSupport

//Use and understand Swift's basic types like Bool, Int, String, and Double

let a = 1
type(of: a)

let a1: Int = 1
type(of: a1)

let b = 1.0
type( of: b)

let b1: Float = 1.0
type(of: b1)

let c = "Hello world"
type(of: c)

let c1: String = "Hello world"
type(of: c1)

let d = "The number is";  let dx = 42
type(of: d); type(of: dx)

let d1: String = "The number is";  let dx1: Int = 42

let e = false
type(of: e)

let e1: Bool = false
type(of: e1)

let f = true
type(of: f)

let f1: Bool = true
type(of: f1)

//Declare and use variables and constants (var let)

let g: Int = 3
var g1: String = "The number is"
g1 = String(g)
//2nd way:
g1 = "\(g)"

//Handle flow control and looping constructs (if for while switch)

let num = 1
var b3 = 12
if b3 > 0{
    b3 += 1
} else if b3 < 0{
    b3 -= 1
}

for i in 1...10{
    print(i)
}
var a2 = 10
while a2 > 0{
    a2 -= 1
    print(10 - a2)
    
}
a2 = 1
while a2 < 10{
    a2 += 1
    print (a2)
}

a2 = 10
switch a2{
case 1...18:
    print ("low")
case 19...36:
    print ("high")
case 0:
    print ("zero")
default:
    print ("unknown")
}

//Create and use collections (Array Set Dictionary)

var array = [Int]()

var array1 = [1, 6, 8, 3, 5, 2]
array = array1.sorted()
//2nd way:
array = array1.sorted(by: { (a, b) -> Bool in
return b < a
})

//Develop and use simple functions (inout ->)

var set :Set = [1, 2, 3, 4, 5, 6, 2, 4, 1]
var set1 :Set = [2, 7, 8, 10, 13, 9]
set.intersection(set1)

var dict :[String:Int] = [ "one" : 1, "two" : 2, "three" : 3]
dict["four"] = 4
dict
dict["four"] = 5
dict

func often (array:[Int]) -> Int{
    var dict = [Int:Int]()
    for a in array {
        dict[a] = (dict [a] ?? 0) + 1
    }
    dict
    var max = 0
    var count = 0
    for (k, v) in dict{
        if v > count{
            count = v
            max = k
        }
    }
    return max
}
often (array: [1, 2, 4, 5, 8, 9, 2, 4, 2])
//
func often1 (array: inout [Int]) -> [Int]{
    array = array.map { (a) -> Int in
        return a + 1
    }
return array
}
var mynums = [1, 2 ,3, 4]
often1(array: &mynums)
mynums


//Cast objects safely from one type to another (as! As? As init).  Handle optionals and unwrap them safely (if let; guard let;! = Nil)

func mytype (a: Any?) -> String{
    if let s = a as? String{
        return "String"
        
    }
      if let s = a as? Int{
          return "Int"
          }
      if let s = a as? Double{
          return "Double"
          
      }
      if let s = a as? Float{
          return "Float"
          
      }
    return "Unknown"
}
mytype(a: 10)
mytype(a: 10.2)
mytype(a: "hello")
mytype(a:[] )
mytype(a: 10.444444444444)



func mytype1 (a: Any?) -> String{
    switch a{
    case let s as String: return "String"
        case let s as Int: return "Int"
        case let s as Double: return "Double"
        case let s as Float: return "Float"    case .none:
        return "unknown"
    case .some(_):
        return "unknown"
         
    }
}
mytype1(a: 10)
mytype1(a: 10.2)
mytype1(a: "hello")
mytype1(a:[] )
mytype1(a: 10.444444444444)
