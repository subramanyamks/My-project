//
//  ViewController.swift
//  Flip
//
//  Created by subramanyam on 12/07/16.
//  Copyright © 2016 Mahiti Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oldView: UIView!
    @IBOutlet var newView: UIView!
    var showingBack = false
    @IBOutlet var flipView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipAct(sender: UIButton) {
        
        
        UIView.transitionWithView(flipView, duration: 1, options: .TransitionFlipFromLeft, animations: {
            
            if !self.showingBack
            
            {
                self.newView.hidden = true
                self.showingBack = true
                self.oldView.hidden = false
                
            }
            else
            {
                self.newView.hidden = false
                self.oldView.hidden = true
                self.showingBack = false
                
            }
            
            }, completion: nil)
        
        
        
    }
    

}

