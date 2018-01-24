//
//  PendingRequestVC.swift
//  Mentor
//
//  Created by Khoi Hoang on 5/18/17.
//  Copyright © 2017 Khoi Hoang. All rights reserved.
//

import UIKit

class PendingRequestVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var students = [Student]()
    
    var student1 = Student(name: "John Cena")
    var student2 = Student(name: "Victor Ramos")
    var student3 = Student(name: "John Legends")
    var student4 = Student(name: "Harry Hoang")
    var student5 = Student(name: "Christ Helen")
    var student6 = Student(name: "Michael Kim")
    var student7 = Student(name: "Park Lee")
    var student8 = Student(name: "Henrry John")
    var student9 = Student(name: "Levi Ackerman")
    

    @IBOutlet weak var tableView2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        students.append(student1)
        students.append(student2)
        students.append(student3)
        students.append(student4)
        students.append(student5)
        students.append(student6)
        students.append(student7)
        students.append(student8)
        students.append(student9)
        
        tableView2.delegate = self
        tableView2.dataSource = self

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellPendingDetails", for: indexPath) as! CellPendingDetails
        cell.smallCellUpdate(student: students[indexPath.row])
        
        return cell
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
