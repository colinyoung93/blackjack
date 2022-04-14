//
//  GameScreenViewController.swift
//  blackjack
//
//  Created by Jess Munro on 2022-04-04.
//

import UIKit

class PlayingCard {
    var value: Int
    var image: UIImage!
    init(value: Int, path:String){
        self.value = value
        self.image = UIImage(named: path)
    }
}

class GameScreenViewController: UIViewController {

    @IBOutlet weak var playerCardImage1: UIImageView!
    @IBOutlet weak var playerCardImage2: UIImageView!
    
    
    @IBOutlet weak var dealerCardImage1: UIImageView!
    @IBOutlet weak var dealerCardImage2: UIImageView!
    
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    var deck = [PlayingCard]()
    var dealerScore = 0
    var playerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildAndDeal()
    }
    
    @IBAction func hitMeButton(_ sender: UIButton) {
        
    }
    
    func updatePlayerScore(score:Int){
        playerScoreLabel.text = String(score)
    }
    
    
    func buildAndDeal(){
        dealerScore = 0
        playerScore = 0
        for x in 1...13{
            for y in 1...4{
                if (x < 10){
                    deck.append(PlayingCard(value:x, path:"" + String(x) + "_" + String(y) +  ".svg"))
                } else {
                    deck.append(PlayingCard(value:10, path:"" + String(x) + "_" + String(y) +  ".svg"))
                }
            }
        }
        
        deck.shuffle()
        
        playerCardImage1.image = deck[0].image
        playerScore += deck[0].value
        deck.remove(at: 0)
        playerCardImage2.image = deck[0].image
        playerScore += deck[0].value
        deck.remove(at: 0)
        dealerCardImage1.image = deck[0].image
        dealerScore += deck[0].value
        deck.remove(at: 0)
        dealerCardImage2.image = deck[0].image
        dealerScore += deck[0].value
        deck.remove(at: 0)
        
        updatePlayerScore(score: playerScore)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



