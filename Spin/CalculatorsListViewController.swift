//
//  CalculatorsListViewController.swift
//  Spin
//
//  Created by Mohamed Salah on 1/27/17.
//  Copyright © 2017 Mohamed Salah. All rights reserved.
//

import UIKit

class CalculatorsListViewController: UIViewController {
    //MARK:- IBOutlets 
    @IBOutlet weak var btnVTE: UIButton!
    @IBOutlet weak var btnBMI: UIButton!
    @IBOutlet weak var btnGFR: UIButton!
    @IBOutlet weak var btnABL: UIButton!
    
    //MARK:- Variables 
    let VTE_SEGUE = "fromCalcsToVTE"
    let BMI_SEGUE = "fromCalcsToBMI"
    let GFR_SEGUE = "fromCalcsToGFR"
    let ABL_SEGUE = "fromCalcsToABL"
    
    //MARK:- UI Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurePageTitle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Configuratiuon
    func configurePageTitle(){
        let frame : CGRect = CGRect(x: 0, y: 0, width: 100, height: 30)
        let label : UILabel = UILabel(frame: frame)
        
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "Nexa Light", size: 22.0)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        label.text = "VTE risk assesment..."
        
        self.navigationItem.titleView = label
    }

    //MARK:- IBActions
    @IBAction func btnListClicked(_ sender: UIButton) {
        if sender == btnVTE {
            self.performSegue(withIdentifier: VTE_SEGUE, sender: self)
        } else if sender == btnBMI {
            self.performSegue(withIdentifier: BMI_SEGUE, sender: self)
        } else if sender == btnGFR {
            self.performSegue(withIdentifier: GFR_SEGUE, sender: self)
        } else {
            self.performSegue(withIdentifier: ABL_SEGUE, sender: self)
        }
    }
}
