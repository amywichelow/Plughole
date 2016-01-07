import UIKit

class Animal {
    
    let name: String!
    let size: String!
    let location: Location
    var ocean: String!
    var country: String!
    
    
    //var legs: Int!
    
    init(name: String, size: String, location: Location, ocean: String, country: String) {
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
    
    let blacktipReefShark = Animal(name: "Blacktip Reef Shark", size: "Up to 180cm", location: .Fish, ocean: "Indo-Pacific", country: "Australia, Mexico & India")
    animals.append(blacktipReefShark)
    let clownFish = Animal(name: "Clown Fish", size: "10cm to 18cm", location: .Fish, ocean: "Indo-Pacific", country: "Australia & Indonesia")
    animals.append(clownFish)
    let epauletteShark = Animal(name: "Epaulette Shark", size: "Up to 107cm", location: .Fish, ocean: "Pacific & Indian",country: "Australia, Papua & New Guinea")
    animals.append(epauletteShark)
    let lionFish = Animal(name: "Lion Fish", size: "up to 38cm", location: .Fish, ocean: "Pacific, Atlantic & Indian", country: "Australia, Indonesia & Florida")
    animals.append(lionFish)
    let morayEel = Animal(name: "Moray Eel", size: "Up to 300cm", location: .Fish, ocean: "Indo-Pacific", country: "Indonesia, Australia")
    animals.append(morayEel)
    let redBelliedPiranha = Animal(name: "Red Bellied Piranha", size: "Up to 30cm", location: .Fish, ocean: "Atlantic", country: "South America & Venezuela")
    animals.append(redBelliedPiranha)
    let regalTang = Animal(name: "Regal Tang", size: "Up to 50cm", location: .Fish, ocean: "Pacific & Indian", country: "Africa & Australia")
    animals.append(regalTang)
    let seahorse = Animal(name: "Seahorse", size: "2cm up to 30cm", location: .Fish, ocean: "Pacific, Atlantic & Indian", country: "USA, UK, India & Australia")
    animals.append(seahorse)
    let southernStingray = Animal(name: "Southern Stingray", size: "Up to 200cm", location: .Fish, ocean: "Atlantic", country: "USA, Brazil")
    animals.append(southernStingray)
    
    let moonJellyfish = Animal(name: "Moon Jellyfish", size: "Up to 25cm", location: .Invertebrates, ocean: "Pacific, Atlantic & Inditan", country: "Britain")
    animals.append(moonJellyfish)
    let commonLobster = Animal(name: "Common Lobster", size: "Up to 60cm", location: .Invertebrates, ocean: "Atlantic & Mediterranean", country: "Norway to Morroco")
    animals.append(commonLobster)
    let longSpinedSeaUrchin = Animal(name: "Long Spined Sea Urchin", size: "10-12cm", location: .Invertebrates, ocean: "Atlantic & Mediterranean", country: "Norway to Morroco")
    animals.append(longSpinedSeaUrchin)
    let nautilus = Animal(name: "Nautilus", size: "Up to 20cm", location: .Invertebrates, ocean: "Indo-Pacific", country: "Australia & Indonesia")
    animals.append(nautilus)
    let spinyLobster = Animal(name: "Spiny Lobster", size: "Up to 60cm", location: .Invertebrates, ocean: "Atlantic & Mediterranean", country: "Norway to Morroco")
    animals.append(spinyLobster)
    
    let africanMudTurtle = Animal (name: "African Mud Turtle", size: "Up to 30cm", location: .Turtles, ocean: "The Amazon", country: "Africa")
    animals.append(africanMudTurtle)
    let greenSeaTurtle = Animal (name: "Green Sea Turtle", size: "Over 100cm", location: .Turtles, ocean: "Atlantic, Indian & Indo-Pacific", country: "Coastal waters of over 140 countries")
    animals.append(greenSeaTurtle)
    let pigNosedTurtle = Animal (name: "Pig Nosed Turtle", size: "Up to 30cm", location: .Turtles, ocean: "The Great Barrier Reef", country: "Australia & New Guinea")
    animals.append(pigNosedTurtle)

    
    
    return animals
}


func filterAnimalsByLocation(locationID: Location) -> [Animal] {
    let allAnimals = buildAnimals()
    
    var animals = [Animal]()
    
    for animal in allAnimals {
        if animal.location == locationID {
            animals.append(animal)
        }
    }
    
    return animals
}







