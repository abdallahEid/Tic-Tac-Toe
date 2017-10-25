//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Abdallah Eid on 10/24/17.
//  Copyright © 2017 TripleApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    
    var activePlayer = 1 // 1 is O , 2 is X
    
    var activeGame = true
    
    var gameState = [Int] (repeating: 0, count:9)   // 0 for empty,1 for O, 2 for X
    
    let winningCompinations = [[0,1,2] , [3,4,5] , [6,7,8] , [0,3,6] , [1,4,7] , [2,5,8] , [0,4,8] , [2,4,6]]
    
    // outlets
  
    @IBOutlet var winningResult: UILabel!
    
    @IBOutlet var playAgainLabel: UIButton!
    
    
    // buttons actions
    
    @IBAction func playAgain(_ sender: Any) {
        
        activeGame = true
        
        activePlayer = 1
        
        gameState = [Int] (repeating: 0, count:9)
        
        for i in 1...9 {
            
            if let button = view.viewWithTag(i) as? UIButton {
                
                button.setImage(nil, for: [])
                
            }
            
        }
        
        winningResult.isHidden = true
        
        playAgainLabel.isHidden = true
        
        winningResult.center = CGPoint(x: winningResult.center.x - 500,y: winningResult.center.y)
        
        playAgainLabel.center = CGPoint(x: playAgainLabel.center.x - 500,y: playAgainLabel.center.y)
        
        
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        if gameState[sender.tag - 1] == 0 && activeGame {
            
            gameState[sender.tag - 1] = activePlayer
            
            if activePlayer == 1 {
                
                sender.setImage(UIImage(named: "nought.png") , for:[])
                
                activePlayer = 2
            
            } else {
            
            
                sender.setImage(UIImage(named: "cross.png") , for:[])
                
                activePlayer = 1
            
            }
            
            for compination in winningCompinations {
                
                if gameState[compination[0]] != 0 &&
                    (gameState[compination[0]] , gameState[compination[1]]) == (gameState[compination[1]] , gameState[compination[2]]) {
                    
                    activeGame = false
                    
                    winningResult.isHidden = false
                    playAgainLabel.isHidden = false
                    
                    if gameState[compination[0]] == 1 {
                        
                        winningResult.text = "Noughts Has Won!"
                        
                        
                    } else {
                    
                        winningResult.text = "Crosses Has Won!"
                    
                    }
                    
                    UIView.animate(withDuration: 1, animations: {
                        
                        self.winningResult.center = CGPoint(x: self.winningResult.center.x + 500,y: self.winningResult.center.y)
                        
                        self.playAgainLabel.center = CGPoint(x: self.playAgainLabel.center.x + 500,y: self.playAgainLabel.center.y)
                        
                    })
                    
                }
                
            }
        
        }
    
    }
    
    // default functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        winningResult.isHidden = true
        
        playAgainLabel.isHidden = true
        
        winningResult.center = CGPoint(x: winningResult.center.x - 500,y: winningResult.center.y)
        
        playAgainLabel.center = CGPoint(x: playAgainLabel.center.x - 500,y: playAgainLabel.center.y)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

