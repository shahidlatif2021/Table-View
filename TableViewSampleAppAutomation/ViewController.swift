//
//  ViewController.swift
//  TableViewSampleAppAutomation
//
//  Created by Shahid Latif on 27/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedEmploy: SeeraEmploy!
    
    let namesArray = [SeeraEmploy(name: "Anas", designation: "Director", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Anoop", designation: "QA Manager", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Priyanka", designation: "QA Manager", phoneNumber: "05XXXXXXXX"),  SeeraEmploy(name: "Arif", designation: "QA Manager", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Gul Rose", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Hamza Sohail", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"),
                      SeeraEmploy(name: "Ramadhan", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Saddam", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Hammad", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Kareem", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"), SeeraEmploy(name: "Sriram", designation: "QA Specialist", phoneNumber: "05XXXXXXXX"),
                      SeeraEmploy(name: "Sindhu", designation: "QA Specialist", phoneNumber: "05XXXXXXXX")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employCell", for: indexPath) as! ManagerTableViewCell
        let user = namesArray[indexPath.row]
        cell.name.text = user.name
        cell.designation.text = user.designation
        cell.phone.text = user.phoneNumber
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "employDetails", sender: namesArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
}

extension ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SeeraEmployDetailsViewController {
            destinationVC.seeraEmploy = sender as? SeeraEmploy
        }
    }
}

