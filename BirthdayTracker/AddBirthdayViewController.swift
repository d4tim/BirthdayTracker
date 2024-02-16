//
//  AddBirthdayViewController.swift
//  BirthdayTracker
//
//  Created by Дмитрий Тимаров on 16.02.2024.
//

import Foundation
import UIKit

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdayPicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdayPicker.maximumDate = Date()
        
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem){
        let firstName = firstNameTextField.text ?? ""
        let secondName = lastNameTextField.text ?? ""
        let birthdayPicker = birthdayPicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: secondName , birthdate: birthdayPicker)
        
        print("Создана запись о дне Рождения")
        print("Имя, \(newBirthday.firstName)")
        print("Фамилия, \(newBirthday.lastName)")
        print("Дата: \(newBirthday.birthdate)")
     
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem){
        dismiss(animated: true, completion: nil)
    }
    
}
