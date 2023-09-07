//
//  ViewController.swift
//  IQuiz
//
//  Created by Diego Rodrigues on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonStart: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        
    }

    @IBAction func buttonPress(_ sender: Any) {
    }
    
    func configuraLayout() {
        navigationItem.hidesBackButton = true
        buttonStart.layer.cornerRadius = 8
    }
}

