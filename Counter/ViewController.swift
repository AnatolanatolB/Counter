//
//  ViewController.swift
//  Counter
//
//  Created by Анатолий Будников on 03.06.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet var refreshButton: UIView!
    @IBOutlet weak var changeView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var counter: Int = 0
    @IBAction func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        changeView.text += "\n\(Date().formatted(date: .long, time: .standard)): счетчик увеличен на 1"
    }

    
    @IBAction func decreaseCounter(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            changeView.text += "\n\(Date().formatted(date: .long, time: .standard)): счетчик уменьшен на 1"
        } else {
            changeView.text += "\n\(Date()): попытка уменьшить значение ниже 0"
        }
    }
    
    @IBAction func refreshCounter(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        changeView.text += "\n\(Date().formatted(date: .long, time: .standard)): значаение сброшено"
    }
    
    
}

