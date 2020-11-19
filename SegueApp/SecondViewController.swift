//
//  SecondViewController.swift
//  SegueApp
//
//  Created by aytug on 19.11.2020.
//  Copyright © 2020 aytug. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = myName
        // Do any additional setup after loading the view.
        print("2.viewController viewDidLoad")
    }
    



}
