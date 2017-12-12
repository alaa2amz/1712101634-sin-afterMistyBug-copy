//
//  OvarianCalculatorTableViewController.swift
//  Spin
//
//  Created by Alaa on 12/9/17.
//  Copyright © 2017 Mohamed Salah. All rights reserved.
//

import UIKit

class OvarianCalculatorTableViewController: UITableViewController,UITextFieldDelegate {
   
    
    @IBOutlet weak var resultDigitLabel: UILabel!
    @IBOutlet weak var serumValueField: UITextField!
    @IBOutlet weak var resultBadgeLabel: UILabel!
    @IBOutlet weak var multilocularButton: UIButton!
    @IBOutlet weak var solidAreasButton: UIButton!
    @IBOutlet weak var metastasisButton: UIButton!
    @IBOutlet weak var ascitesButton: UIButton!
    @IBOutlet weak var bilateralButton: UIButton!
    @IBOutlet weak var postMenopausalButton: UIButton!
    @IBOutlet weak var preMenopausalButton: UIButton!
    
    var ovarianCancerCalculator : ovarianCancerGuideLogic!
    var ultrasonic : UltraSoundScan!
    var ultraScanScore = 0
    var menopausal : Menopausal = .premenopausal
    
    @IBAction func calculateRMI(_ sender: Any) {
        ovarianCancerCalculator.serumCancer = (NumberFormatter().number(from: serumValueField.text!)?.doubleValue)!
        ovarianCancerCalculator.menopausalStatus = menopausal.rawValue
        ovarianCancerCalculator.ultraSoundScore = ultrasonic.ultraSoundScoreValue
       print( String(ovarianCancerCalculator.getRmi()))
      
    }
    
    
    @IBAction func ButtonClicked(_ sender: Any) {
         print (preMenopausalButton.state)
        let clickedButton = sender as! UIButton
        var currentState  =  clickedButton.isSelected
        clickedButton.isSelected = !currentState
        switch clickedButton {
        case multilocularButton:
            ultrasonic.multilocular = !currentState
        case solidAreasButton:
            ultrasonic.solidAreas = !currentState
        case metastasisButton:
            ultrasonic.metastasis = !currentState
        case ascitesButton:
            ultrasonic.ascites = !currentState
        case bilateralButton:
            ultrasonic.bilateral = !currentState
        case postMenopausalButton:
           postMenopausalButton.isSelected = true
            menopausal = .postmenopausal
            preMenopausalButton.isSelected = false
        case preMenopausalButton:
           preMenopausalButton.isSelected = true
            menopausal = .premenopausal
           postMenopausalButton.isSelected = false
            //ultrasonic.multilocular = !currentState
        default:
            print("error")
             }
       
       
       
        
        
    }
    
    @IBOutlet weak var calculateRMI: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ultrasonic = UltraSoundScan()
        preMenopausalButton.isSelected = true
        ovarianCancerCalculator = ovarianCancerGuideLogic(ultraSoundScore: ultraScanScore, menopausalStatus: menopausal, serumCancer: (NumberFormatter().number(from: serumValueField.text!)?.doubleValue)!)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    

    
}
