//
//  ViewController.swift
//  MIDatePickerDemo
//
//  Created by Mario on 25/06/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectedValueLabel: UILabel!
    
    var datePicker = MIDatePicker.getFromNib()
    var dateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDatePicker()
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
    }
    
    private func setupDatePicker() {
        
        datePicker.delegate = self
        
        datePicker.config.startDate = NSDate()
        
        datePicker.config.animationDuration = 0.25
        
        datePicker.config.cancelButtonTitle = "Cancel"
        datePicker.config.confirmButtonTitle = "Confirm"
        
        datePicker.config.contentBackgroundColor = UIColor(red: 253/255.0, green: 253/255.0, blue: 253/255.0, alpha: 1)
        datePicker.config.headerBackgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1)
        datePicker.config.confirmButtonColor = UIColor(red: 32/255.0, green: 146/255.0, blue: 227/255.0, alpha: 1)
        datePicker.config.cancelButtonColor = UIColor(red: 32/255.0, green: 146/255.0, blue: 227/255.0, alpha: 1)
        
    }
    
    @IBAction func showDatePicker(sender: AnyObject) {
        datePicker.show(inVC: self)
    }

}

extension ViewController: MIDatePickerDelegate {
    
    func miDatePicker(amDatePicker: MIDatePicker, didSelect date: NSDate) {
        selectedValueLabel.text = dateFormatter.stringFromDate(date)
    }
    func miDatePickerDidCancelSelection(amDatePicker: MIDatePicker) {
        // NOP
    }
    
}

