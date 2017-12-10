//
//  GFRStateController.swift
//  Spin
//
//  Created by Mohamed Salah on 1/28/17.
//  Copyright © 2017 Mohamed Salah. All rights reserved.
//

import Foundation

class GFRStateController {
    
    //MARK:- Formulas
    private func getGFRForOther (age : Double, serum : Double) -> Double {
        return 175.0 * pow(serum, -1.154) * pow(age, -0.203) * 0.742
    }
    
    private func getGFRForBlack (age : Double, serum : Double) -> Double {
        return 175.0 * pow(serum, -1.154) * pow(age, -0.203) * 0.742 * 1.212
    }
    
    
    //MARK:- get Result 
    func getGFRResults (age : Double, serum : Double, other : Bool) -> BMIResult {
        let result = other ? getGFRForOther(age: age, serum: serum) : getGFRForBlack(age: age, serum: serum)
        
        if result >= 60 {
            let comments = "Kidney function is in the normal range."
            let resultString = ">=60" + "\n\n" + "mL/min/1.73 m2"
            
            return BMIResult(result: resultString, comments: comments)

        } else if result > 14.9 && result < 60 {
            let comments = "This may mean kidney disease."
            let resultString = "14.9-60" + "\n\n" + "mL/min/1.73 m2"

            return BMIResult(result: resultString, comments: comments)
            
        } else if result <= 15.0 {
            let comments = "Your patient may have kidney failure."
            let resultString = "<=15" + "\n\n" + "mL/min/1.73 m2"
            
            return BMIResult(result: resultString, comments: comments)
        }
        
        return BMIResult()
    }
    
}
