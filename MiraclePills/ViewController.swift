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
    }
    @IBAction func AcceptButtonPressed(_ sender: Any) {
        statePicker.isHidden = true
        AcceptButton.isHidden = true
    }
}

