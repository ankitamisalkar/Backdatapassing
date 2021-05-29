//
//  secondViewController.swift
//  BackDataPassing
//
//  Created by Mac on 09/05/21.
//

import UIKit
protocol DataPassProtocol : class {
    func passData (text: String)
    
    }


class secondViewController: UIViewController {
    weak var delegate : DataPassProtocol? 

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonSubmit(_ sender: Any){
    delegate?.passData(text: textField?.text ?? "Default")
        self.navigationController?.popViewController(animated: true)
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    

 
}
