//
//  ext NotificationCenter.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 23.12.2022.
//

import Foundation

extension NoteScreenVC {
    static let notificationSceneDidDisconnect = Notification.Name("disconnect")
    
    func setupNC() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(save),
                                               name: NoteScreenVC.notificationSceneDidDisconnect,
                                               object: nil)
    }
    
    @objc private func save() {
        noteWasOpen ? updateNote() : saveNote()
    }
}
