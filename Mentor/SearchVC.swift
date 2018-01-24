//
//  SearchVC.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/17/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var Mentors = [Mentor]()
    var filter = [Mentor]()
    
    var search = false

    @IBOutlet weak var menteeIcon: UIButton!
    @IBOutlet weak var zipLabel: UITextField!
    
    var men1 = Mentor (name: "John Legends", zipcode: 20006, school: "University of District of Colombia", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men2 = Mentor (name: "Erik Bailey", zipcode: 20007, school: "Mississippi Valley State University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men3 = Mentor (name: "Mark Hogan", zipcode: 20008, school: "Lincoln University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men4 = Mentor (name: "Historia Railey", zipcode: 20006, school: "North Carolina A & T University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men5 = Mentor (name: "Christina Taylor", zipcode: 20007, school: "Grambling University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men6 = Mentor (name: "Alex Morgan", zipcode: 20008, school: "Alabama State University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men7 = Mentor (name: "Caitilyn Jenner", zipcode: 20007, school: "Jackson State University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men8 = Mentor (name: "Jennifer Thompson", zipcode: 20008, school: "Howard University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    var men9 = Mentor (name: "Andrew Ng", zipcode: 20008, school: "Elizabeth State University", days: "Monday, Tuesday, Wednesday, Thursday", courses: "Computer Science, Discrete Math, iOS Programming", review: "This is one of the best mentor I've known so far. I learned a lot from him")
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Mentors.append(men1)
        Mentors.append(men2)
        Mentors.append(men3)
        Mentors.append(men4)
        Mentors.append(men5)
        Mentors.append(men6)
        Mentors.append(men7)
        Mentors.append(men8)
        Mentors.append(men9)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        menteeIcon.layer.masksToBounds = false
        menteeIcon.layer.cornerRadius = menteeIcon.frame.height/2
        menteeIcon.clipsToBounds = true
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (search) {
            return filter.count
        } else {
            return Mentors.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellDetails", for: indexPath) as! CellDetails
        
        if (!search) {
            cell.updateCell(mentor: Mentors[indexPath.row])
        } else {
            cell.updateCell(mentor: filter[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        if (search) {
        performSegue(withIdentifier: "BookingVC", sender: filter[indexPath.row])
        } else {
            performSegue(withIdentifier: "BookingVC", sender: Mentors[indexPath.row])
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BookingVC" {
            if let destination = segue.destination as? BookingVC {
                if let mentor = sender as? Mentor {
                    destination.itemToEdit = mentor
                }
            }
        }
    }
    
    

    
    @IBAction func menteeButtonPressed(_ sender: UIButton) {
    }
    


    @IBAction func searchPressed(_ sender: UIButton) {
        
        zipLabel.resignFirstResponder()
        
        filter.removeAll()
        search = true
        if (search) {
            if (zipLabel.text == "") {
                for i in 0...(Mentors.count - 1) {
                    filter.append(Mentors[i])
                }
            } else {
            for i in 0...(Mentors.count - 1) {
                if (zipLabel.text == "\(Mentors[i].zipcode!)") {
                    filter.append(Mentors[i])
                }
            }
            }
        }

        tableView.reloadData()
        
    }
    
    



}
