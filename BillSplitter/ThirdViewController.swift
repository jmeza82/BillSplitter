//
//  ThirdViewController.swift
//  BillSplitter
//
//  Created by Juan Meza on 12/17/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func close(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
