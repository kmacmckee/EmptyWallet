//
//  TransactionViewController.swift
//  EmptyWallet
//
//  Created by Kobe McKee on 11/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var recipientTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var categoryPicker: UIPickerView!
    @IBOutlet weak var saveButton: UIButton!
    
    var transactionController: TransactionController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amountTextField.addTarget(self, action: #selector(myTextFieldDidChange), for: .editingChanged)
        
        datePicker.datePickerMode = .date
        categoryPicker.dataSource = self
        categoryPicker.delegate = self
        
    }
    
    @objc func myTextFieldDidChange(_ textField: UITextField) {
        if let amountString = textField.text?.currencyInputFormatting() {
            textField.text = amountString
        }
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return SpendingCategory.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return SpendingCategory(rawValue: row)?.description
    }
    
    
    
    
    
    
    

}
