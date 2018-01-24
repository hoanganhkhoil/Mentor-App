//
//  ProfileMentorVC.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/18/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class ProfileMentorVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var photoPicker: UIImagePickerController!
    
    @IBOutlet weak var LoggoutButton: UIButton!
    
    @IBOutlet weak var mentorIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoPicker = UIImagePickerController()
        photoPicker.delegate = self
        
        mentorIcon.layer.masksToBounds = false
        mentorIcon.layer.cornerRadius = mentorIcon.frame.height/2
        mentorIcon.clipsToBounds = true

     
        LoggoutButton.layer.masksToBounds = false
        LoggoutButton.layer.cornerRadius = 15
        LoggoutButton.clipsToBounds = true
    }
    
    @IBAction func addImage(_ sender: UIButton) {
        present(photoPicker, animated: true, completion: nil)
    }

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let img = info[UIImagePickerControllerOriginalImage] as? UIImage {
            mentorIcon.image = img
        }
        
        photoPicker.dismiss(animated: true, completion: nil)
    }


    


}
