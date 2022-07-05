//
//  ViewController.swift
//  ApplePie
//
//  Created by 1910370062f on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer","swift","glorious","incandescent","bug","program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    var currentGame: Game!
    
    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI(){
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        
    }
    
}

