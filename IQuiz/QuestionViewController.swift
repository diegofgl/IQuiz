//
//  QuestionViewController.swift
//  IQuiz
//
//  Created by Diego Rodrigues on 20/07/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var punctuation = 0
    var numberQuestion = 0
    
    @IBOutlet weak var titleQuestion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurationLayout()
        configurationQuestion()
    }
    
    @IBOutlet var responseButton: [UIButton]!
    
    @IBAction func responseQuestion(_ sender: UIButton) {
        let userHit = questions[numberQuestion].responseCorect == sender.tag
        
        if userHit {
            punctuation += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if numberQuestion <  questions.count - 1 {
            numberQuestion += 1
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(configurationQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToPerformanceScreen()
        }
    }
    
    func navigateToPerformanceScreen() {
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
        
    }

    
    @objc func configurationQuestion() {
        titleQuestion.text = questions[numberQuestion].title
        for button in responseButton {
            let titleButton = questions[numberQuestion].response[button.tag]
            button.setTitle(titleButton, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
        
        func configurationLayout() {
            navigationItem.hidesBackButton = true // esconder botão Back
            titleQuestion.numberOfLines = 0
            titleQuestion.lineBreakMode = .byCharWrapping
            titleQuestion.contentMode = .scaleToFill
            titleQuestion.textAlignment = .center
            for button in responseButton {
                button.layer.cornerRadius = 12.0
            }
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let performanceVC =
                    segue.destination as?
                    PerformanceViewController
            else {return}
            performanceVC.punctuation = punctuation
        }
    
    }

