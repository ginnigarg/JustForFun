//
//  Constants.swift
//  MyNotesApp
//
//  Created by Guneet Garg on 17/07/18.
//  Copyright © 2018 Guneet Garg. All rights reserved.
//

import Foundation

class Note {
    static var notes = [String]()
    static var titles = [String]()
    
    func addNote(title : String,note : String) -> Void {
        Note.notes.append(title)
        Note.titles.append(title)
    }
    
    func removeNoteAt(index : Int) -> Void {
        Note.notes.remove(at: index)
        Note.titles.remove(at: index)
    }
    
    
}
