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
    
    var gameState = [Bool] (repeating: false, count:9)

    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        if activePlayer == 1 {
            
            if !gameState[sender.tag - 1] {
                
                sender.setImage(UIImage(named: "nought.png") , for:[])
                
                gameState[sender.tag - 1] = true
                
            }
            
            activePlayer = 2
            
        } else {
            
            if !gameState[sender.tag - 1] {
            
                sender.setImage(UIImage(named: "cross.png") , for:[])
                
                gameState[sender.tag - 1] = true
                
            }
            
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

