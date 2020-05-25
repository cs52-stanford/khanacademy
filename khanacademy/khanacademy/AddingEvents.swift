//
//  AddingEvents.swift
//  khanacademy
//
//  Created by Poojit Hegde on 5/21/20.
//  Copyright © 2020 cs52. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class AddingEvents: UIViewController {

    var ref: DatabaseReference!
    var date = ""

    @IBOutlet weak var inputName: UITextField?
    @IBOutlet weak var inputDescription: UITextField?
    @IBOutlet weak var inputOrganization: UITextField?
    @IBOutlet weak var inputCategory: UITextField?
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
    }
    
    @IBAction func buttonSearchInMap(_ sender: Any) {
    }
    
    @IBAction func registerEventButton(_ sender: UIButton) {
        
        self.ref.child("events").childByAutoId().setValue(["name": inputName?.text, "description": inputDescription?.text, "organization": inputDescription?.text, "category": inputCategory?.text, "date": date]);
    }
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: datePicker.date)
        date = strDate
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
