//
//  ViewController.swift
//  Apple Pie
//
//  Created by Student on 22/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    
    var listOfWords = ["hello" , "world" , "apple" , "banana" , "swift", "python"]
    
    let incorrectMoves = 7
    var totalWins = 0{
        didSet {
            newRound()
        }
    }
    var totalLosses = 0{
        didSet {
            newRound()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    var currentGame: Game!
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining : incorrectMoves, guessedLetters: [])
            updateUI()
            enableLetterButton(true)
        }else{
            enableLetterButton(false)
        }
    }

    func enableLetterButton(_ enable: Bool){
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    func updateUI() {
        var letters = [String()]
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins) Losses: \(totalLosses)"
//        correctLabel.text = currentGame.incorrectMovesRemaining.description
        imageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
    }
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
            
        }else if currentGame.formattedWord == currentGame.word {
            totalWins += 1
        }
        else{
            updateUI()
        }
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.titleLabel?.text ?? ""
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
}

