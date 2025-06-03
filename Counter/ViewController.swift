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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var counter: Int = 0
    @IBAction func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
}

