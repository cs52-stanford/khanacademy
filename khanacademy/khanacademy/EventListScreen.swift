//
//  EventListScreen.swift
//  projWork
//
//  Created by Poojit Hegde on 5/5/20.
//  Copyright © 2020 Poojit Hegde. All rights reserved.
//

import UIKit


var events: [Event] = []

class EventListScreen: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!

    
    // categories
    @IBAction func catButton(_ sender: Any) {
        self.view.addSubview(cat)
        cat.center = self.view.center
    }
    @IBOutlet var cat: UIView!
    @IBAction func cat1(_ sender: Any) {
        self.cat.removeFromSuperview()
    }
    
    @IBAction func cat2(_ sender: Any) {
        self.cat.removeFromSuperview()
    }
    
    @IBAction func cat3(_ sender: Any) {
        self.cat.removeFromSuperview()
    }
    @IBAction func cat4(_ sender: Any) {
        self.cat.removeFromSuperview()
    }
    @IBAction func cat5(_ sender: Any) {
        self.cat.removeFromSuperview()

    }
    
    @IBAction func catCancel(_ sender: Any) {
        self.cat.removeFromSuperview()
    }
    // distance view
    @IBOutlet var distView: UIView!
    @IBAction func distButton(_ sender: Any) {
        self.view.addSubview(distView)
        distView.center = self.view.center
    }
    @IBAction func dist1(_ sender: Any) {
             self.distView.removeFromSuperview()
    }
    @IBAction func dist2(_ sender: Any) {
             self.distView.removeFromSuperview()
    }
    @IBAction func dist3(_ sender: Any) {
             self.distView.removeFromSuperview()
    }
    @IBAction func dist4(_ sender: Any) {
             self.distView.removeFromSuperview()
    }
    @IBAction func dist5(_ sender: Any) {
             self.distView.removeFromSuperview()
    }
    
    @IBAction func distCancel(_ sender: Any) {
        self.distView.removeFromSuperview()
    }
    // organization
    @IBOutlet var orgView: UIView!
    @IBAction func orgButton(_ sender: Any) {
        self.view.addSubview(orgView)
        orgView.center = self.view.center
    }
    @IBAction func orgText(_ sender: Any) {

    }
    @IBAction func orgDone(_ sender: Any) {
        self.orgView.removeFromSuperview()

    }
    @IBAction func orgRevert(_ sender: Any) {
        self.orgView.removeFromSuperview()
    }
    
    // add event
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = createArray()
        self.cat.layer.cornerRadius = 10
        self.distView.layer.cornerRadius = 10
        self.orgView.layer.cornerRadius = 10

   
        // Do any additional setup after loading the view.
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
    func createArray() -> [Event] {
        var tempEvents: [Event] = []
        
        let event1 = Event(name: "New Year Party", date: "1/1/2021, 12:00 AM", location: "Club", organization: "Party City")
          let event2 = Event(name: "Graduation", date: "6/15/2020, 6:00 PM", location: "Stadium", organization: "MCA")
          let event3 = Event(name: "Study Session", date: "5/28/2020, 6:00 PM", location: "Online", organization: "Master Tutoring")
        
        tempEvents.append(event1)
        tempEvents.append(event2)
        tempEvents.append(event3)
        
        return tempEvents
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

extension EventListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let event = events[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell") as! EventCell
        
        cell.setEvent(event: event)
        
        return cell
    }
   
}
