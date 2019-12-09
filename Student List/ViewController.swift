//
//  ViewController.swift
//  Student List
//
//  Created by Ludovic Ollagnier on 09/12/2019.
//  Copyright © 2019 Tectec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genreSegmentedControl: UISegmentedControl!
    @IBOutlet weak var listTextView: UITextView!

    var learners: [Learner] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func add(_ sender: UIButton) {

        let gender: Learner.Gender
        //On le configure
        if genreSegmentedControl.selectedSegmentIndex == 0 {
            gender = .male
        } else {
            gender = .female
        }

        //On crée l'apprenant
        let learner: Learner = Learner(name: nameTextField.text!, gender: gender)

        //On le range dans le tableau
        learners.append(learner)
        nameTextField.text = ""
    }

    @IBAction func list(_ sender: UIButton) {

        var message = ""
        for learner in learners {
            message += learner.sayHi()
        }

        listTextView.text = message
    }
}

