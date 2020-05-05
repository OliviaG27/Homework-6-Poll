//
//  ViewController.swift
//  Homework 6: Poll
//
//  Created by Olivia Gennaro 


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var upVoteCounter: UILabel!
    @IBOutlet weak var downVoteCounter: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        upVoteCounter.text = String((parent as! TBViewController).yesVote)
        downVoteCounter.text = String((parent as! TBViewController).noVote)
        
        
        if (parent as! TBViewController).yesVote > (parent as! TBViewController).noVote
        {
            winner.text = "Yes, all the anchovies!"
        } else {
            winner.text = "No stinky fish!"
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do not load counts here because this only loads once, and not every time we view
        // Do any additional setup after loading the view.
    }


}

