//
//  ViewController.swift
//  moodPicker
//
//  Created by riya on 9/8/17.
//  Copyright © 2017 riya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let moodlist:[String] = ["Ecstatic", "Happy", "Cheerful", "Fine", "Tired", "Maudlin", "Depressed", "Overwhelmed"]
    
    //delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodlist[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var color:UIColor
        switch row {
        case 0, 1, 2:
            color = UIColor.yellow
        case 3, 4, 5:
            color = UIColor.blue
        case 6, 7:
            color = UIColor.brown
        default:
            color = UIColor.red
        }
        self.view.backgroundColor = color
    }
    
    
    // data source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodlist.count
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

