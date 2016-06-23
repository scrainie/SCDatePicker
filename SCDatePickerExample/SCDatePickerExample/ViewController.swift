//
//  ViewController.swift
//  SCDatePickerExample
//
//  Created by Stewart Crainie on 21/06/2016.
//  Copyright © 2016 Stewart Crainie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SCDateFieldDelegate {

    @IBOutlet weak var datePickerTextField: DateFieldTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Options
        datePickerTextField.dateDelegate = self
        datePickerTextField.datetype = .time
        datePickerTextField.doneButtonTint = UIColor.redColor()
        
    }

    
    func dateTextHasChanged(dateString: String, date: NSDate) {
    
        datePickerTextField.text = dateString
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

