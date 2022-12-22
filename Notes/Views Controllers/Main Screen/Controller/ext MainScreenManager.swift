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
    
    @objc func presentNoteScreen() {
        let noteScreenVC = NoteScreenVC()
        navigationController?.pushViewController(noteScreenVC, animated: true)
    }

}
