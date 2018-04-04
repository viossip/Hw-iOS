//
//  ViewController.swift
//  Hw-iOS
//
//  Created by Vitaly on 3/11/18.
//  Copyright © 2018 Vitaly. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var nameTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startBtn(_ sender: Any) {
        //  TODO:
        performSegue(withIdentifier: "toMainMenuSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMainMenuSegue"{
            if let destination = segue.destination as?  MainViewController{
                destination.nameStr = nameTxt.text!
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}

