//
//  ext MainScreenManager.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 22.12.2022.
//

import Foundation

extension MainScreenTVC: MainScreenManager {
    func deleteNote(index: Int) {
        RealmManager.shared.deleteNote(index: index)
    }
    
    @objc func presentAddNoteScreen() {
        let noteScreenVC = NoteScreenVC()
        noteScreenVC.navigationItem.largeTitleDisplayMode = .never
        noteScreenVC.noteWasOpen = false
        navigationController?.pushViewController(noteScreenVC, animated: true)
    }

    func presentNoteScreen(index: Int) {
        let noteScreenVC = NoteScreenVC()
        noteScreenVC.navigationItem.largeTitleDisplayMode = .never
        noteScreenVC.noteWasOpen = true
        noteScreenVC.index = index
        let note = RealmManager.shared.getNote(index: index)
        noteScreenVC.noteScreen.noteTitle.text = note.title
        noteScreenVC.noteScreen.noteText.text = note.text
        navigationController?.pushViewController(noteScreenVC, animated: true)
    }
}
