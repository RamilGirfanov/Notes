//
//  RealmManager.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import Foundation
import RealmSwift

class RealmManager {
    
    static let shared = RealmManager()
    
    private init() {}
    
    let localRealm = try! Realm()
    
    func saveNote(note: Note) {
        try! localRealm.write {
            localRealm.add(note)
        }
    }
    
    func updateNote(index: Int, note: Note) {
        let noteToUpdate = localRealm.objects(Note.self)[index]
        try! localRealm.write {
            noteToUpdate.title = note.title
            noteToUpdate.text = note.text
        }
    }
    
    func getNotes() -> [Note] {
        var notes: [Note] = []
        localRealm.objects(Note.self).forEach { notes.append($0) }
        return notes
    }
    
    func getNote(index: Int) -> Note {
        return localRealm.objects(Note.self)[index]
    }
    
    func deleteNote(index: Int) {
        let noteToDelete = localRealm.objects(Note.self)[index]
        try! localRealm.write{
            localRealm.delete(noteToDelete)
        }
    }
}
