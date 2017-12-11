//
//  VTEdosageTableViewController.swift
//  Spin
//
//  Created by A on 12/11/17.
//  Copyright © 2017 Mohamed Salah. All rights reserved.
//

import UIKit

class VTEdosageTableViewController: UITableViewController,UITextFieldDelegate {
    //MARK: variables
    
    @IBOutlet weak var weightTextFeild: UITextField!
    //MARKS: functions
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.isHidden = true
        textField.resignFirstResponder()
        textField.returnKeyType = .done
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool  {
        
        let currentCharacterCount = textField.text?.count ?? 0
        if (range.length + range.location > currentCharacterCount){
            return false
        }
        let newLength = currentCharacterCount + string.count - range.length
        return newLength <= 3
    }
    @IBAction func calculateVteDosage(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

  


 

}
