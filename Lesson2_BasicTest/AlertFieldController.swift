//
//  AlertFieldController.swift
//  Lesson2_BasicTest
//
//  Created by Gary Behan on 30/10/2024.
//

import UIKit

class AlertFieldController: UIViewController {
    
    
    @IBOutlet weak var GoBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil);
    }
}

