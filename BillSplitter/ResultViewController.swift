//
//  ResultViewController.swift
//  BillSplitter
//
//  Created by Juan Meza on 12/16/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var finalText = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = finalText
    }

    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
