//
//  BookingVC.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/18/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class BookingVC: UIViewController {
    
    var itemToEdit: Mentor!
    
    @IBOutlet weak var mentorProfile: UIImageView!

    @IBOutlet weak var profilePicture: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!
    
    @IBOutlet weak var daysLabel: UILabel!
    
    
    @IBOutlet weak var classLabel: UILabel!
    
    
    
    
    @IBOutlet weak var feedBackLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (itemToEdit != nil) {
            loadData()
        }

    }

    func loadData() {
        nameLabel.text = itemToEdit.name
        schoolLabel.text = itemToEdit.school
        daysLabel.text = itemToEdit.days
        classLabel.text = itemToEdit.courses
        feedBackLabel.text = itemToEdit.review
        
        mentorProfile.layer.masksToBounds = false
        mentorProfile.layer.cornerRadius = mentorProfile.frame.height/2
        mentorProfile.clipsToBounds = true
    }
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


    @IBAction func requestPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "ConfirmVC", sender: itemToEdit)
    }

}
