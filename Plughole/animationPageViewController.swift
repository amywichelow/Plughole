import UIKit

class animationPageViewController: UIViewController {
    
    @IBOutlet weak var penguin: UIImageView!
    @IBOutlet weak var plughole: UIImageView!
    @IBOutlet weak var crab: UIImageView!
    @IBOutlet weak var fish: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var bars: UIImageView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        UIView.animateWithDuration(4.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: { () -> Void in
            
            self.plughole.center.x = self.plughole.center.x + 300
        
            self.penguin.animationDuration = 3.0
            self.penguin.center.y = self.penguin.center.x + 400
            self.penguin.center.x = self.penguin.center.x - 75
            self.penguin.alpha = 0
            self.penguin.transform = CGAffineTransformMakeScale(0.3, 0.8)
        
            self.crab.animationDuration = 3.0
            self.crab.center.x = self.penguin.center.x - 60
            self.crab.center.y = self.penguin.center.y + 25
            self.crab.alpha = 0
            self.crab.transform = CGAffineTransformMakeScale(0.3, 0.8)
            
            self.fish.animationDuration = 3.0
            self.fish.center.y = self.fish.center.x + 400
            self.fish.center.x = self.fish.center.x - 140
            self.fish.alpha = 0
            self.fish.transform = CGAffineTransformMakeScale(0.3, 0.8)
            
            self.bars.animationDuration = 1.0
            self.bars.center.y = self.bars.center.x - 450
            self.bars.alpha = 0
            
            }) { (Bool) -> Void in
                
                self.performSegueWithIdentifier("MapScreen", sender: self)

        }
    
    
}
    
}