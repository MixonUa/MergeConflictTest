protocol Transport {
    var speed: Int { get set }
    var capacity: Int { get set }
 //   var cost: Int { get set }
    
 //   func transportToDestination()
}

extension Transport {
    var cost: Int { return 10 } // не может содержать хранимые свойства (нельзя написать = 10)

    func transportToDestination(distance: Int) -> Int {
        let fee: Int = (distance*cost)/capacity
        return fee
    }
}

class Vehicle: Transport {
    
    var speed: Int
    var capacity: Int
    

    
    init(speed: Int, capacity: Int) {
        self.speed = speed
        self.capacity = capacity
    }
}

class Flying: Transport {
    
    var speed: Int
    var capacity = 325
    
    init(speed: Int) {
        self.speed = speed
    }
}

let bus = Vehicle(speed: 70, capacity: 45)
bus.transportToDestination(distance: 150)

let plane = Flying(speed: 1500)
let paperPlane = Flying(speed: 3)
let car = Vehicle(speed: 65, capacity: 4)

let vehicles: [Transport] = [bus, plane, paperPlane, car]

var allCostArray: [Int] = []
for i in vehicles {
    allCostArray.append(i.transportToDestination(distance: 573))
}

print(allCostArray)
