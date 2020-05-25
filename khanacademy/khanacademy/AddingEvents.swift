//
//  AddingEvents.swift
//  khanacademy
//
//  Created by Poojit Hegde on 5/21/20.
//  Copyright © 2020 cs52. All rights reserved.
//

import UIKit

class AddingEvents: UIViewController {

    

       @IBOutlet weak var inputName: UITextField?
       
       @IBOutlet weak var inputDescription: UITextField?
       
      
       @IBAction func inputDate(_ sender: Any) {
       }
       
       @IBOutlet weak var inputOrganization: UITextField?
       
       @IBOutlet weak var inputCategory: UITextField?
       

       @IBOutlet weak var inputLocation: UITextField?
       
       @IBAction func buttonSearchInMap(_ sender: Any) {
       }
       
       
       @IBAction func registerEventButton(_ sender: UIButton) {
       /*
        let newEvent = Event(name: "\(inputName?.text ?? "default")" , date: "", location: "\(String(describing: inputLocation?.text))", organization: "\(inputOrganization?.text ?? "default val")")
               //return newEvent
        
        events.append(newEvent)
        let vc = EventListScreen()
        vc.reloadTableView()
    */
       }
       
       
       
       
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
