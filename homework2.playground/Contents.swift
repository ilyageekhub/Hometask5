import UIKit

//myAuto
class MyAuto {
    let color: String
    let mark: String
    var engine = AutoEngine()
    init(_ mark: String, color: String){
        self.mark = mark
        self.color = color
    }
    func turnOn () {
        engine.turnOn()
            
    }
        func turnOff () {
        engine.turnOff()
            
    }
}


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

class Display {
    var engine: AutoEngine
      var car: MyAuto
      init(car: MyAuto) {
          self.car = car
          self.engine = car.engine
      }
    func showInfo(){
        showCarInfo()
        showEnginInfo()
    }
      func showCarInfo() {
          show(name: "Model", value: car.mark)
          show(name: "Color", value: car.color)
      }
      
      func showEnginInfo() {
          show(name: "Engine", value: engine.isOn)
          show(name: "Turns", value: engine.turns)
          show(name: "Speed", value: engine.speed)
      }
      
      func show(name: String, value: Any) {
          print("\(name): \(value)")
      }
}
 

var auto = MyAuto ("koenigsegg", color: "white")
auto.turnOn()
var display = Display(car: auto)
