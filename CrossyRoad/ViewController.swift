//
//  ViewController.swift
//  CrossyRoad
//
//  Created by Malachi Poole on 6/26/17.
//  Copyright © 2017 Malachi Poole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var LandSc: [UIImageView]!
    @IBOutlet weak var plat: UIImageView!
    @IBOutlet weak var player: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.move))
        player.addGestureRecognizer(tapGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func move(){
        print("hey im inside move")
        UIView.animate(withDuration: 0.2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            
            self.player.center = CGPoint(x: self.player.center.x, y: self.player.center.y - 50)
            
        }, completion: nil)
        
    
        UIView.animate(withDuration: 0.8, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            
            self.player.center = CGPoint(x: self.player.center.x, y: self.player.center.y + 50)
            
        
        for i in 0...self.LandSc.count-1{
            
                self.LandSc[i].center = CGPoint(x: self.LandSc[i].center.x, y: self.LandSc[i].center.y + 50)

            }
            
            
            }, completion: nil)
        
        
        
        for i in 0...self.LandSc.count-1{
            
            if (self.LandSc[i].center.y >= self.view.center.y * 2 + 100){
                self.LandSc[i].center.y = -25
            }
       
        }

      

    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        move()
    }
}

