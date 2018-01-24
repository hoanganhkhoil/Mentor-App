//
//  CellDetails.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/17/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class CellDetails: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!

    @IBOutlet weak var mentorIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(mentor: Mentor) {
        nameLabel.text = mentor.name!
        locationLabel.text = mentor.school!
        mentorIcon.layer.masksToBounds = false
        mentorIcon.layer.cornerRadius = mentorIcon.frame.height/2
        mentorIcon.clipsToBounds = true
    }

}
