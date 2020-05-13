//
//  EventCell.swift
//  projWork
//
//  Created by Poojit Hegde on 5/5/20.
//  Copyright © 2020 Poojit Hegde. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var eventOrganization: UILabel!
    @IBOutlet weak var eventLocation: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var eventName: UILabel!
    
    @IBOutlet weak var eventTime: UILabel!
    func setEvent(event: Event) {
        eventName.text = event.name
        eventOrganization.text = event.organization
        eventLocation.text = event.location
        eventDate.text = event.date
    }
    
    /*
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 */

}
