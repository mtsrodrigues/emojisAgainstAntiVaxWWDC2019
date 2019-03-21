import UIKit
import SpriteKit
import PlaygroundSupport

public class FirstViewController: UIViewController {
    
    public var spriteScene: FirstScene?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        spriteScene = FirstScene(size: view.bounds.size)
        spriteScene?.scaleMode = .resizeFill
        let skView = SKView(frame: CGRect(origin: CGPoint.zero, size: view.bounds.size))
        skView.isUserInteractionEnabled = true
        skView.backgroundColor = UIColor.red
        skView.presentScene(spriteScene)
        
        skView.showsPhysics = true
        
        self.view.addSubview(skView)
    }
    
}

extension FirstViewController: PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer  {
    public func receive(_ message: PlaygroundValue) {
        
    }
}
