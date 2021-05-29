//
//  ViewController.swift
//  BackDataPassing
//
//  Created by Mac on 09/05/21.
//

import UIKit

class ViewController: UIViewController , DataPassProtocol {
   
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
 @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonClick(_ sender: UIButton) {
    let secondVC = storyboard?.instantiateViewController(identifier: "secondViewController") as? secondViewController
        guard let sVCObj = secondVC else {
            return
        }
        sVCObj.delegate = self
        self.navigationController?.pushViewController(sVCObj, animated: true)
    }
    


  
    func passData(text: String) {
        
    self.textField.text = text
    }
}


