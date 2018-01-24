//
//  ViewController.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/17/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var mentorLogo: UIButton!
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var studentLogo: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        changeFont()
        
        
        mentorLogo.layer.masksToBounds = false
        mentorLogo.layer.cornerRadius = mentorLogo.frame.height/2
        mentorLogo.clipsToBounds = true
                
        
        studentLogo.layer.masksToBounds = false
        studentLogo.layer.cornerRadius = studentLogo.frame.height/2
        studentLogo.clipsToBounds = true
    }


   
//    func changeFont() {
//        welcomeLabel.font = UIFont(name: "Brush Script MT", size: 53)
//    }

}

