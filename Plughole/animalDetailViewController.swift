
import UIKit

class animalDetailViewController: UIViewController {
    
    let animals = buildAnimals()
    var counter = 0
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var oceanLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "swipeRight")
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        updateView()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "swipeLeft")
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        updateView()
    }
    
    func swipeRight() {
        if counter < animals.count - 1 {
            counter++
        } else {
            counter = 0
        }
        updateView()

    }
    
    func swipeLeft() {
        if counter > animals.count - 0 {
            counter++
        } else {
            counter = animals.count - 1
        }
        
        updateView()
        
    }
    
    func updateView() {
        let animal = animals[counter]
        nameLable.text = animal.name
        sizeLabel.text = animal.size
        oceanLabel.text = animal.ocean
        countryLabel.text = animal.country
    }
    
}