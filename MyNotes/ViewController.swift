//
//  ViewController.swift
//  MyNotes
//
//  Created by Admin on 3/20/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBOutlet var txtTitle: UITextField!
    @IBOutlet var txtDetails: UITextView!
    
    @IBAction func saveBtn(_ sender: UIButton) {
        
        let newNote = MyNote(context: context)
        newNote.title = txtTitle.text
        newNote.details = txtDetails.text
        newNote.data_save = NSDate() as Date
        do{
        ad.saveContext()
            print("saved")
            txtTitle.text = ""
            txtDetails.text = ""
        }catch{
            print("error")
        }
        
    }
}

