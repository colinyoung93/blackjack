//
//  HomeViewController.swift
//  blackjack
//
//  Created by Jess Munro on 2022-04-13.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var guestLabel: UILabel!
    
    var result: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guestLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nameChangeButton(_ sender: UIButton) {
        result = nameField.text!
        guestLabel.text = result
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
