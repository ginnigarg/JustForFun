//
//  ViewController.swift
//  MyNotesApp
//
//  Created by Guneet Garg on 15/07/18.
//  Copyright © 2018 Guneet Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var notes = Notes()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        let context = appDelegate.persistentContainer.viewContext

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//        Dispose of any resources that can be recreated.
    }
    
    @IBAction func add() {
        //let newNote = NSEntityDescription.entity(forEntityName : "Notes",in : context)
        Note.notes.append(noteTextField.text)
        Note.titles.append(titleTextField.text!)
//        let controller = self.storyboard?.instantiateViewController(withIdentifier: "NotesTableViewController") as! NotesTableViewController
//        self.present(controller, animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
        
    }


}

