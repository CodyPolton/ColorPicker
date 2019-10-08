//
//  ViewController.swift
//  ColorPicker
//
//  Created by Cody Polton on 08/10/2019.
//  Copyright © 2019 Cody Polton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedColor = colors[row].name
        textField.text = selectedColor
        textField.textAlignment = .center
        if(selectedColor == "Red"){
            self.view.backgroundColor = colors[row].prop
        }else if(selectedColor == "Orange"){
            self.view.backgroundColor = colors[row].prop
        }else if(selectedColor == "Yellow"){
            self.view.backgroundColor = colors[row].prop
        }else if(selectedColor == "Green"){
            self.view.backgroundColor = colors[row].prop
        }else if(selectedColor == "Blue"){
            self.view.backgroundColor = colors[row].prop
        }else if(selectedColor == "Purple"){
            self.view.backgroundColor = colors[row].prop
        }
    }
    
    var selectedColor : String?
    struct Color{
        var name: String
        var prop: UIColor
    }
    var colors = [ Color(name:"Red",prop: UIColor.red), Color(name:"Orange",prop: UIColor.orange), Color(name:"Yellow",prop: UIColor.yellow), Color(name:"Green",prop: UIColor.green), Color(name:"Blue",prop: UIColor.blue), Color(name:"Purple",prop: UIColor.purple)]
    

    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var textField: UILabel!
    
     
    override func viewDidLoad() {
        let intialIndex = 0
        super.viewDidLoad()
        pickerView.selectedRow(inComponent: intialIndex)
        
        selectedColor = colors[intialIndex].name
        textField.text = selectedColor
        textField.textAlignment = .center
        if(selectedColor == "Red"){
            self.view.backgroundColor = colors[intialIndex].prop
        }else if(selectedColor == "Orange"){
            self.view.backgroundColor = colors[intialIndex].prop
        }else if(selectedColor == "Yellow"){
            self.view.backgroundColor = colors[intialIndex].prop
        }else if(selectedColor == "Green"){
            self.view.backgroundColor = colors[intialIndex].prop
        }else if(selectedColor == "Blue"){
            self.view.backgroundColor = colors[intialIndex].prop
        }else if(selectedColor == "Purple"){
            self.view.backgroundColor = colors[intialIndex].prop
        }
        
        // Do any additional setup after loading the view.
    }


}

