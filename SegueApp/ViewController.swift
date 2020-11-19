//
//  ViewController.swift
//  SegueApp
//
//  Created by aytug on 19.11.2020.
//  Copyright © 2020 aytug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        textField.text = ""
    }
    @IBAction func nextOnClicked(_ sender: Any) {
        userName = textField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

