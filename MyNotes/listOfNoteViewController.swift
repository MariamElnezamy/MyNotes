//
//  listOfNoteTableViewController.swift
//  MyNotes
//
//  Created by Admin on 3/20/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit
import CoreData

class listOfNoteViewController: UIViewController , UITableViewDelegate , UITableViewDataSource , NSFetchedResultsControllerDelegate{

    @IBOutlet var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadNotes()
    }
    
    var listNote = [MyNote]()

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listNote.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:NoteCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NoteCell
        
        cell.SetNote(note: listNote[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let objc = controller.fetchedObjects {
//            let item = objc[indexPath.row]
//            performSegue(withIdentifier: "showDetails", sender: item)
//        }
        let item = listNote[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetails" {
//            if let destination = segue.destination as? showDetailsViewController {
//                //     let selectedRow = self.TableView.indexPathForSelectedRow
//                if let item = segue as? MyNote {
//                    destination.details = item
//                }
//            }
//        }
        if let detailPlaceVC = segue.destination as? showDetailsViewController {
            detailPlaceVC.initData(forData: sender as! MyNote)
            
        }

    }
    
    

    var controller:NSFetchedResultsController<MyNote>!


    func loadNotes() {
        let fetchRequest :NSFetchRequest<MyNote> = MyNote.fetchRequest()
                let data_addSort = NSSortDescriptor(key: "data_save", ascending: false)
                fetchRequest.sortDescriptors = [data_addSort]
                controller = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        controller.delegate = self
        do{
            listNote = try context.fetch(fetchRequest)
            TableView.reloadData()

        }catch{
        }
        
    }
    


}
