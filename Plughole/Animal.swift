import UIKit

class Animal {
    
    let name: String!
    let size: String!
    let location: Int!
    var ocean: String!
    var country: String!
    
    //var legs: Int!
    
    init(name: String, size: String, location: Int, ocean: String, country: String) {
        self.name = name
        self.size = size
        self.location = location
        self.ocean = ocean
        self.country = country
        
        //if let legs = legs {
            //self.legs = legs}
        }
    }
    




func buildAnimals() -> [Animal] {
    
    var animals = [Animal]()
    
    let blacktipReefShark = Animal(name: "Blacktip Reef Shark", size: "Up to 180cm", location: 1, ocean: "Indo-Pacific", country: "Australia, Mexico & India")
    animals.append(blacktipReefShark)
    
    let clownFish = Animal(name: "Clown Fish", size: "10cm to 18cm", location: 2, ocean: "Indo-Pacific", country: "Australia & Indonesia")
    animals.append(clownFish)
    
    let epauletteShark = Animal(name: "Epaulette Shark", size: "Up to 107cm", location: 1, ocean: "Pacific & Indian",country: "Australia, Papua & New Guinea")
    animals.append(epauletteShark)
    
    let lionFish = Animal(name: "Lion Fish", size: "up to 38cm", location: 2, ocean: "Pacific, Atlantic & Indian", country: "Australia, Indonesia & Florida")
    animals.append(lionFish)
    
    let morayEel = Animal(name: "Moray Eel", size: "Up to 300cm", location: 2, ocean: "Indo-Pacific", country: "Indonesia, Australia")
    animals.append(morayEel)
    
    let redBelliedPiranha = Animal(name: "Red Bellied Piranha", size: "Up to 30cm", location: 1, ocean: "Atlantic", country: "Argentina, Bolivia, Brazil, Columbia, Ecuador, Guyana, Paraguay, Peru, Uruguay & Venezuela")
    animals.append(redBelliedPiranha)
    
    let regalTang = Animal(name: "Regal Tang", size: "Up to 50cm", location: 2, ocean: "Pacific & Indian", country: "Africa & Australia")
    animals.append(regalTang)
    
    let seahorse = Animal(name: "Seahorse", size: "2cm up to 30cm", location: 2, ocean: "Pacific, Atlantic & Indian", country: "USA, UK, India, Phillipines & Australia")
    animals.append(seahorse)
    
    let southernStingray = Animal(name: "Southern Stingray", size: "Up to 200cm", location: 2, ocean: "Atlantic", country: "USA, Brazil")
    animals.append(southernStingray)
    
    return animals
}


func filterAnimalsByLocation(locationID: Int) -> [Animal] {
    let allAnimals = buildAnimals()
    
    var animals = [Animal]()
    
    for animal in allAnimals {
        if animal.location == locationID {
            animals.append(animal)
        }
    }
    
    return animals
}







