//
//  SeeraEmployDetailsViewController.swift
//  TableViewSampleAppAutomation
//
//  Created by Shahid Latif on 27/09/2022.
//

import UIKit

class SeeraEmployDetailsViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var designation: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    var seeraEmploy: SeeraEmploy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = seeraEmploy.name
        designation.text = seeraEmploy.designation
        phone.text = seeraEmploy.phoneNumber
    }
}
