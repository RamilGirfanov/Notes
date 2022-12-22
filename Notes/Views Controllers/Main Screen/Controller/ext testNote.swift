//
//  ext testNote.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 22.12.2022.
//

import UIKit

extension MainScreenTVC {
    func testNote() {
        if UserDefaults.standard.bool(forKey: "firstLaunchApp") == true {
            let note = Note(name: "Тестовая заметка", text: "Какой-то текст")
            RealmManager.shared.saveNote(note: note)
        }
        UserDefaults.standard.set(false, forKey: "firstLaunchApp")
    }
}
