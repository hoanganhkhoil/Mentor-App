//
//  ProfileStudentVC.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/18/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class ProfileStudentVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var photoPicker1: UIImagePickerController!
    
    @IBOutlet weak var loggout: UIButton!
    @IBOutlet weak var studentIconLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photoPicker1 = UIImagePickerController()
        photoPicker1.delegate = self
        
        studentIconLogo.layer.masksToBounds = false
        studentIconLogo.layer.cornerRadius = studentIconLogo.frame.height/2
        studentIconLogo.clipsToBounds = true
        
        loggout.layer.masksToBounds = false
        loggout.layer.cornerRadius = 15
        loggout.clipsToBounds = true

    }


    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addImage1(_ sender: UIButton) {
        present(photoPicker1, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let img = info[UIImagePickerControllerOriginalImage] as? UIImage {
            studentIconLogo.image = img
        }
        
        photoPicker1.dismiss(animated: true, completion: nil)
    }

    
}
