//
//  CellPendingDetails.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/18/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class CellPendingDetails: UITableViewCell {

    @IBOutlet weak var studentIcon: UIImageView!
    @IBOutlet weak var smallnameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func smallCellUpdate(student: Student) {
        smallnameLabel.text = student.name
        studentIcon.layer.masksToBounds = false
        studentIcon.layer.cornerRadius = studentIcon.frame.height/2
        studentIcon.clipsToBounds = true
    }

}
