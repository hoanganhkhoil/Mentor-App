//
//  Mentor.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/17/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import Foundation

class Mentor {
    var name: String!
    var zipcode: Int!
    var school: String!
    var days: String!
    var courses: String!
    var review: String!

    
    init(name: String, zipcode: Int, school: String,
         days: String, courses: String, review: String) {
        self.name = name
        self.zipcode = zipcode
        self.school = school
        self.days = days
        self.courses = courses
        self.review = review
    }
}
