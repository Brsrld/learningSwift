protocol CanFly {
    func fly()
}


class Bird {
    
    var isFamale = true
    
    func layEgg(){
        if isFamale {
            print("The bird makes a new bird in a shell")
        }
    }
}

class Eagle : Bird , CanFly {
    func fly() {
        print{"The eagle flaps its wings and lifts off into the sky"}
    }
    
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles throught the water")
    }
}
struct FlyingMuseum {
    
    func flayingdemo(flyingobject:CanFly) {
        flyingobject.fly()
    }
}

class  Airplane : CanFly {
    func fly() {
        print("The airplanes uses its engine to lift off into the air")
        
    }

}
let myEagle = Eagle()
let myPenguin = Penguin()
let museum = FlyingMuseum()
museum.flayingdemo(flyingobject: CanFly)
