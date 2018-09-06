//
//  NotesTableViewController.swift
//  MyNotesApp
//
//  Created by Guneet Garg on 15/07/18.
//  Copyright © 2018 Guneet Garg. All rights reserved.
//

import UIKit
import CoreData

class NotesTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Note.notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotesTableCell", for: indexPath)
        tableView.rowHeight = 70
        if #available(iOS 8.0, *) {
            cell.detailTextLabel?.text = Note.titles[indexPath.row]
            cell.textLabel?.text = Note.notes[indexPath.row]
        }
        return cell
    }
    
    @IBAction func addNote() {
        performSegue(withIdentifier: "AddNotes", sender: self)
    }
    


}
