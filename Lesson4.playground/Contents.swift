import Cocoa

enum FourWD {
    case onDrive
    case offDrive
}
enum SpeedUp {
    case onNitro
    case offNitro
}
class Car {
    var model: String
    var year: Int
    var weight: Int
    init(model: String, year: Int, weight: Int){
    self.model = model
    self.year = year
    self.weight = weight

    }
}
class TrunkCar: Car{
    var fourWD: FourWD
    init(fourWD: FourWD){
        self.fourWD = fourWD
        super.init(model: "Toyota", year: 2016, weight: 1970)
    }
}
class SportCar: Car {
  var speedUp: SpeedUp
    init(speedUp: SpeedUp){
        self.speedUp = speedUp
        super.init(model: "Supra", year: 2010, weight: 1050)
    }
}
var car1 = Car(model: "Honda", year: 2008, weight: 1420)
print("Марка авто:", car1.model, "Год выпуска:", car1.year, "Масса авто:", car1.weight)

var car2 = TrunkCar(fourWD: .onDrive);
print("Марка авто:", car2.model, "Год выпуска:", car2.year, "Масса авто:", car2.weight)

var car3 = SportCar(speedUp: .onNitro);
print("Марка авто:", car3.model, "Год выпуска:", car3.year, "Масса авто:", car3.weight)












