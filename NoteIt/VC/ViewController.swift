//
//  ViewController.swift
//  NoteIt
//
//  Created by vipul garg on 2019-11-04.
//  Copyright © 2019 vipul garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
       
    }
    @IBAction func submit(_ sender: UIButton) {
        let userName = userNameTF.text;
        let defaults = UserDefaults.standard
        defaults.set(userName, forKey: Contants.userName);
    }
    

}

