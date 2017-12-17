//
//  CalculatorsListViewController.swift
//  Spin
//
//  Created by Mohamed Salah on 1/27/17.
//  Copyright © 2017 Mohamed Salah. All rights reserved.
//

import UIKit

class CalculatorsListViewController: UIViewController,UIGestureRecognizerDelegate {
    
    func didTap(sender: Any) {
        print("hhhhhoooo")
            performSegue(withIdentifier: "fromCalcsToVTE", sender: self)
     
        
      
    }
    
   
    
    
    @IBOutlet weak var vteView: UIView!
    @IBOutlet weak var bmiView: UIView!
    @IBOutlet weak var gfrView: UIView!
    @IBOutlet weak var ablView: UIView!
    @IBOutlet weak var rmiView: UIView!
    var vteViewTap = UITapGestureRecognizer()
    var bmiViewTap = UITapGestureRecognizer()
     var gfrViewTap = UITapGestureRecognizer()
     var ablViewTap = UITapGestureRecognizer()
     var rmiViewTap = UITapGestureRecognizer()
    
    
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
        
        
       self.view.isUserInteractionEnabled = true
        vteView.isUserInteractionEnabled = true
        vteViewTap.delegate = self
        bmiViewTap.delegate = self
        gfrViewTap.delegate = self
        ablViewTap.delegate = self
        rmiViewTap.delegate = self
       
        rmiViewTap.addTarget(self, action: #selector(didTap))
        vteView.addGestureRecognizer(vteViewTap)
        bmiView.addGestureRecognizer(bmiViewTap)
        gfrView.addGestureRecognizer(gfrViewTap)
        ablView.addGestureRecognizer(gfrViewTap)
        rmiView.addGestureRecognizer(rmiViewTap)

        // Do any additional setup after loading the view.
        configurePageTitle()
    }

    
        
    
    
    
    
    
    //MARK:- Configuratiuon
    func configurePageTitle(){
        let frame : CGRect = CGRect(x: 0, y: 0, width: 100, height: 30)
        let label : UILabel = UILabel(frame: frame)
        
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "Nexa Light", size: 22.0)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        label.autoresizingMask = .flexibleWidth
        label.numberOfLines = 0
        label.minimumScaleFactor = 0.5
        label.text = "VTE risk assesment and\nother calculatiors"
        
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
