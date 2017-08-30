//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ariven on 30/08/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var imageViewer: UIImageView!
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var lblZipcode: UILabel!
    @IBOutlet weak var txtZipcode: UITextField!

    @IBOutlet weak var lblMiraclePill: UILabel!
    @IBOutlet weak var lbl150dollar: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var lblFullname: UILabel!
    @IBOutlet weak var txtFirstname: UITextField!
    @IBOutlet weak var lblStreetaddress: UILabel!
    @IBOutlet weak var txtStreetaddress: UITextField!
    @IBOutlet weak var lblcity: UILabel!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var lblState: UILabel!
    @IBOutlet weak var btnBuynow: UIButton!
    
    let states = ["Delhi", "Mumbai", "Bangalore", "Chennai", "Hydrabad", "Pune", "Goa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.delegate = self
        statePicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        pickerViewDisplayLogic(command: "NO")
    }
    
    @IBAction func btnByeNowPressed(_ sender: Any) {
        
        imageViewer.image = UIImage(named: "successIndicator.png");
        hideAllExceptImageView()
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
        
        statePickerBtn.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
        pickerViewDisplayLogic(command: "YES")
    }
    
    func pickerViewDisplayLogic(command: String){
    
        if(command == "YES"){
        
            lblCountry.isHidden = false
            txtCountry.isHidden = false
            lblZipcode.isHidden = false
            txtZipcode.isHidden = false
        }
        else{
        
            lblCountry.isHidden = true
            txtCountry.isHidden = true
            lblZipcode.isHidden = true
            txtZipcode.isHidden = true
        }
    }
    
    func hideAllExceptImageView(){
    
        lblMiraclePill.isHidden = true
        lbl150dollar.isHidden = true
        dividerView.isHidden = true
        lblFullname.isHidden = true
        txtFirstname.isHidden = true
        lblStreetaddress.isHidden = true
        txtStreetaddress.isHidden = true
        lblcity.isHidden = true
        txtCity.isHidden = true
        lblState.isHidden = true
        statePickerBtn.isHidden = true
        lblCountry.isHidden = true
        txtCountry.isHidden = true
        lblZipcode.isHidden = true
        txtZipcode.isHidden = true
        btnBuynow.isHidden = true
    }
}
















