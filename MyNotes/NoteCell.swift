//
//  NoteCell.swift
//  MyNotes
//
//  Created by Admin on 3/20/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {

    @IBOutlet var txtTitle: UILabel!
    @IBOutlet var txtDetails: UILabel!
        
    func SetNote(note: MyNote) {
        txtTitle.text = note.title
        txtDetails.text = note.details
    }
    
}
