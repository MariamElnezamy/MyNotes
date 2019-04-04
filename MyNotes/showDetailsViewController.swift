//
//  showDetailsViewController.swift
//  MyNotes
//
//  Created by Admin on 3/29/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class showDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = details?.title
        detailsTxtView.text =  details?.details
    }
    
    var details:MyNote?
    
    @IBOutlet var titleLabel: UILabel!
 
    @IBOutlet var detailsTxtView: UITextView!
    
    func initData(forData note: MyNote) {
        self.details = note
}

}
