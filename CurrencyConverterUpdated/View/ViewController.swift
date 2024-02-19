//
//  ViewController.swift
//  CurrencyConverterUpdated
//
//  Created by Jasmine Sung on 18/2/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet var background: UIView!
    
    @IBOutlet weak var amountField: UITextField!
    var hkdSwitch = true
    var twdSwitch = true
    var gbpSwitch = true
    var phpSwitch = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        background.addGestureRecognizer(tap)    }
    
    @objc func dismissKeyboard() {
        print("dimissing keyboard")
        view.endEditing(true)
    }


    @IBAction func hkdSwitchChange(_ sender: UISwitch) {
        hkdSwitch = sender.isOn
        print("hkd switch", hkdSwitch)
    }
    @IBAction func twdSwitchChange(_ sender: UISwitch) {
        twdSwitch = sender.isOn
        print("twd switch", twdSwitch)
    }
    @IBAction func gbpSwitchChange(_ sender: UISwitch) {
        gbpSwitch = sender.isOn
        print("gbp switch", gbpSwitch)
    }
    @IBAction func phpSwitchChange(_ sender: UISwitch) {
        phpSwitch = sender.isOn
        print("php switch", phpSwitch)
    }
    func isStringAnInt(string: String) -> Bool {
        return Int(string) != nil
    }
    @IBAction func clickedConvert(_ sender: UIButton) {
        print("clicked convert")
        errorLabel.text = ""
        let amountString = amountField.text!
        print(amountString)
        if !self.isStringAnInt(string: amountString) {
            errorLabel.text = "Amount to convert must be an integer."
            return
        }
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let resultNavigation = segue.destination as! ResultViewController
            resultNavigation.amountToConvert = amountField.text!
            resultNavigation.convertHKD = hkdSwitch
            resultNavigation.convertTWD = twdSwitch
            resultNavigation.convertGBP = gbpSwitch
            resultNavigation.convertPHP = phpSwitch
        }
    }
}

