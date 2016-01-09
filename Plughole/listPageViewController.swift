import UIKit

class listPageViewController: UIViewController  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var saveAnimal: String?
    
    
    let animals = buildAnimals()
    let loader = loadObjects()
    
    var selectedAnimal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let saveAnimal = saveAnimal {
            loader.saveObject(saveAnimal)
        }
        
    }
    
    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDino" {
            let vc = segue.destinationViewController as! DetailViewController
            vc.animalName = selectedAnimal!.name
            vc.buttonHidden = true
        }
    }
    
}

extension listPageViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        let animal = animals[indexPath.row]
        
        let titleLabel = cell?.viewWithTag(1) as! UILabel
        titleLabel.text = animal.name
        
        let imageView = cell?.viewWithTag(2) as! UIImageView
        
        
        
        return cell!
    }
    
}

extension listPageViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let animal = animals[indexPath.row]
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        if loader.hasFoundObject(animal.name) {
            selectedAnimal = animals[indexPath.row]
            performSegueWithIdentifier("ShowAnimal", sender: self)
        }
        selectedAnimal = animal[indexPath.row]
    }
    
}