//
//  ConfirmVC.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/18/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class ConfirmVC: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    var courses = ["Accounting", "Biology", "Business Finance", "Chemistry", "Computer Science", "Physic"]
    
    
    @IBOutlet weak var dateTitle: UIButton!
    
    @IBOutlet weak var datePickerView: UIDatePicker!
    
    
    @IBOutlet weak var stackview2: UIStackView!
    @IBOutlet weak var stackview3: UIStackView!
    @IBOutlet weak var courseTitle: UIButton!
    @IBOutlet weak var coursesPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coursesPickerView.dataSource = self
        coursesPickerView.delegate = self
        
        coursesPickerView.isHidden = true
        datePickerView.isHidden = true

    }
    
    @IBAction func datePickerViewChanged(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd, YYYY hh:mm a"
        dateTitle.setTitle(formatter.string(from: datePickerView.date), for: UIControlState.normal)
        datePickerView.isHidden = true
        stackview2.isHidden = false
        stackview3.isHidden = false
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        courseTitle.setTitle(courses[row], for: UIControlState.normal)
        stackview3.isHidden = false
        coursesPickerView.isHidden = true
    }

    @IBAction func courseButtonPressed(_ sender: UIButton) {
        stackview3.isHidden = true
        coursesPickerView.isHidden = false
    }

    
    @IBAction func dateButtonPressed(_ sender: UIButton) {
        stackview3.isHidden = true
        stackview2.isHidden = true
        datePickerView.isHidden = false
    }

    @IBAction func confirmButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
