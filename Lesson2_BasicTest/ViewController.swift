//
//  ViewController.swift
//  SkyTraining
//
//  Created by Gary Behan on 23/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AlertButton: UIButton!
    @IBOutlet weak var TextFieldButton: UIButton!
    @IBOutlet weak var FormButton: UIButton!
    @IBOutlet weak var DatePickerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func alertButtonTapped(_ sender: Any) {
            let refreshAlert = UIAlertController(title: "Alert", message: "This is a native alert", preferredStyle: UIAlertController.Style.alert)

            refreshAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
                    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let alertViewController = storyBoard.instantiateViewController(withIdentifier: "AlertFieldController")
                    self.present(alertViewController, animated: true, completion: nil)
              }))

            refreshAlert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action: UIAlertAction!) in
              print("Handle Cancel Logic here")
              }))

            self.present(refreshAlert, animated: true, completion: nil)
        }
}

