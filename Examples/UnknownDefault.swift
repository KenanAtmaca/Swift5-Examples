// kenanatmaca.com

enum Vehicles {
    case car
    case bus
    case truck
    case plane
}
 
let vehiclesObj:Vehicles = .plane
 
switch (vehiclesObj) {
case .car: print("car")
case .bus: print("bus")
@unknown default: print("Unknown") //
}
