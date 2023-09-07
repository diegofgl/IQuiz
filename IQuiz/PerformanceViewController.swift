//
//  PerformanceViewController.swift
//  IQuiz
//
//  Created by Diego Rodrigues on 03/08/23.
//

import UIKit

class PerformanceViewController: UIViewController {
    
    var punctuation: Int?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurationPerformance()

    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12
    }
    
    func configurationPerformance () {
        guard let punctuation = punctuation else { return }
        resultLabel.text = "Você acertou \(punctuation) de \(questions.count) questões"
        let percent = (punctuation * 100) / questions.count
        percentLabel.text = "Percentual final: \(percent)%"
        
        }

    }
