import PlaygroundSupport

class AutoEngine {
    var activePistons: Int = 12

    var maxSpeed: Float{
        if activePistons > 6 {
            return 457
        } else {
            return 275
        }
    }
    var speed: Float = 0.0
    var turns: Int = 0
    var isOn: Bool {
        return turns > 0
    
    }
    func setactivepistons( pistons: Int ){
        activePistons = pistons
    }
    func turnOn ()
    {
        turns = 1000
    }
    func turnOff ()
       {
           turns = 0
       }
    func drive (speed: Float) {
        self.speed = speed
        if !isOn{
            self.speed = 0
        }
          if speed > maxSpeed{
          self.speed = maxSpeed
        }
    }
    func breakDown () {
        speed = 0
    }
}


class Car {
    let color: String
    let mark: String
    private var engine = AutoEngine()
    init(_ mark: String, color: String){
          self.mark = mark
          self.color = color
      }
      func turnOn () {
         engine.turnOn()
              
      }
      func turnOff () {
         engine.turnOff()
              
      }}

class Tractor: Car{
       var scoop = Scoop()
    override func turnOn() {
        super.turnOn()
        scoop.turnOn()
    }
    override func turnOff() {
        super.turnOff()
        scoop.turnOff()
    }
}
  
class Scoop {
    func turnOn () {
                 
         }
    func turnOff () {
    }
    func liftup (){
        
    }
    func getback (){
        
    }
    func liftdown () {
        
    }
}

var tractor = Tractor
.init("Cat", color: "Yellow")
tractor.turnOn()
tractor.turnOff()
tractor.scoop.turnOn()
var car = Car("Audi", color: "black")
car.turnOn()

var numbers = [2, 4, 5, 8, 9, 2, 1]
numbers.filter { (a) -> Bool in
    return a < 5
}

func filter(array: [Int], condition: (Int) -> Bool) -> [Int]{
    var result = [Int]()
    for a in array{
        if condition(a){
            result.append(a)
        }
    }
    return result
}
filter(array: numbers) { (a) -> Bool in
     return a < 5
    
}
filter(array: numbers) { (a) -> Bool in
    return a > 5
    
}
filter(array: numbers) { (a) -> Bool in
     return (a % 2) == 0
    
}
var myArray = [2, 4, 5, 8, 9, 2, 1]
myArray.map { (a) -> Int in
    return a * a
   
}
myArray.reduce(2) { (result, a) -> Int in
    return result * a
}
myArray.sort { (a, b) -> Bool in
    return a < b
}
