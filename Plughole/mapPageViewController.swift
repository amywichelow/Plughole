import UIKit

class mapPageViewController: UIViewController {
    
    @IBAction func homeButton(sender: UIButton) {
        performSegueWithIdentifier("MapScreen", sender: sender)
        print("home page")
    }
    
    @IBAction func listButton(sender: UIButton) {
        performSegueWithIdentifier("listScreen", sender: sender)
        print("list page")
        
    }
   
    
    
    @IBAction func donateButton(sender: UIButton) {
        performSegueWithIdentifier("donateScreen", sender: sender)
        print("donate page")
    }
    
    @IBAction func aboutButton(sender: UIButton) {
        performSegueWithIdentifier("aboutPage", sender: sender)
        print("about page")
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    


    
}
 