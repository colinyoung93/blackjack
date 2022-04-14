//
//  GameScreenViewController.swift
//  blackjack
//
//  Created by Jess Munro on 2022-04-04.
//

import UIKit



class GameScreenViewController: UIViewController {

    @IBOutlet weak var playerCardImage1: UIImageView!
    @IBOutlet weak var playerCardImage2: UIImageView!
    
    
    @IBOutlet weak var dealerCardImage1: UIImageView!
    @IBOutlet weak var dealerCardImage2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hitMeButton(_ sender: UIButton) {
        
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



