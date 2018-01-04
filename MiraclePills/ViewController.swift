//
//  ViewController.swift
//  MiraclePills
//
//  Created by Dylan Ward on 3/1/18.
//  Copyright © 2018 Dylan Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let states = ["QLD", "NSW", "TAS", "NT", "VIC", "WA", "ACT"]
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var stateButton: UIButton!
    
    @IBOutlet weak var AcceptButton: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var postCodeLabel: UILabel!
    
    @IBOutlet weak var postCodeTextField: UITextField!
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var streetText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(states[row], for: UIControlState.normal)
    }
    
    @IBAction func StateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        AcceptButton.isHidden = false
        
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        postCodeLabel.isHidden = true
        postCodeTextField.isHidden = true
        
        buyNowButton.isHidden = true
    }
    @IBAction func AcceptButtonPressed(_ sender: Any) {
        statePicker.isHidden = true
        AcceptButton.isHidden = true
        
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        postCodeLabel.isHidden = false
        postCodeTextField.isHidden = false
        
        buyNowButton.isHidden = false
    }
    
    @IBAction func BuyNowPressed(_ sender: Any) {
        if CheckFieldsFilled()
        {
            //make success image appear
            successImage.isHidden = false
        }
    }
    
    func CheckFieldsFilled()->Bool
    {
        if countryTextField.text != "" && nameText.text != "" && cityText.text != "" && streetText.text != "" && postCodeTextField.text != "" && stateButton.currentTitle != "Select your State" {
            return true
        }
        else {
            return false
        }
    }
}

