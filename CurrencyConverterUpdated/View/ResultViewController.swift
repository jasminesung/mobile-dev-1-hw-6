//
//  ResultViewController.swift
//  CurrencyConverterUpdated
//
//  Created by Jasmine Sung on 18/2/2024.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultPHPLabel: UILabel!
    @IBOutlet weak var resultGBPLabel: UILabel!
    @IBOutlet weak var resultTWDLabel: UILabel!
    @IBOutlet weak var resultHKDLabel: UILabel!
    @IBOutlet weak var resultAmountLabel: UILabel!
    var amountToConvert : String = " "
    var converterLogic = ConverterLogic()
    var convertHKD : Bool = false
    var convertTWD : Bool = false
    var convertGBP : Bool = false
    var convertPHP : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultPHPLabel.text = ""
        resultGBPLabel.text = ""
        resultTWDLabel.text = ""
        resultHKDLabel.text = ""
        resultAmountLabel.text = amountToConvert
        self.showResults()
    }
    
    func showResults() {
        let amountInt = Int(amountToConvert)!
        if convertHKD {
            resultHKDLabel.text = "HKD: " + String(converterLogic.convertHKD(amountInt))
        }
        if convertTWD {
            resultTWDLabel.text = "TWD: " + String(converterLogic.convertTWD(amountInt))
        }
        if convertGBP {
            resultGBPLabel.text = "GBP: " + String(converterLogic.convertGBP(amountInt))
        }
        if convertPHP {
            resultPHPLabel.text = "PHP: " + String(converterLogic.convertPHP(amountInt))
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
