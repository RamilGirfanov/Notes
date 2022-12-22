//
//  ext NoteScreenManager.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 22.12.2022.
//

import UIKit

extension NoteScreenVC: NoteScreenManager {
    func saveNote() {
        guard noteScreen.noteTitle.text?.isEmpty == false || noteScreen.noteText.text.isEmpty == false else { return }
        
        var noteTitle = noteScreen.noteTitle.text
        
        if noteTitle!.isEmpty {
            noteTitle = "Название"
        }
        
        let note = Note(name: noteTitle!, text: noteScreen.noteText.text)
        RealmManager.shared.saveNote(note: note)
    }
    
    func updateNote() {
        let noteTitle = noteScreen.noteTitle.text
        let noteText = noteScreen.noteText.text
        
        if noteTitle!.isEmpty && noteText!.isEmpty {
            RealmManager.shared.deleteNote(index: index)
        } else {
            let note = Note(name: noteTitle!, text: noteText!)
            RealmManager.shared.updateNote(index: index, note: note)
        }
    }
}

