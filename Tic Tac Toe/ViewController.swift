//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Abdallah Eid on 10/24/17.
//  Copyright © 2017 TripleApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1 is O , 2 is X
    var activePlayer = 1

    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        if activePlayer == 1 {
            
            sender.setImage(UIImage(named: "nought.png") , for:[])
            
            activePlayer = 2
            
        } else {
            
            sender.setImage(UIImage(named: "cross.png") , for:[])
            
            activePlayer = 1
            
            
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

