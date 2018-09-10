//
//  ViewController.swift
//  MadLibs
//
//  Created by Tiange Wang on 9/9/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    var word: String = "..."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        mainLabel.text = word
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        let source = segue.source as! SecondViewController
        word = "We are having a perfectly \(source.adjLabel.text!) time now. Later we will \(source.verbLabel1.text!) and \(source.verbLabel2.text!) in the \(source.nounLabel.text!)"
    }


}

