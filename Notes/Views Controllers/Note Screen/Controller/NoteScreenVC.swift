//
//  NoteScreenVC.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import UIKit

protocol NoteScreenManager {
    func saveNote()
}

class NoteScreenVC: UIViewController {
    
//    MARK: - Экземпляр NoteScreen
    
    lazy var noteScreen = NoteScreen()
    
    
//    MARK: - Lifecycle
    
    override func loadView() {
        view = noteScreen
    }
        
    override func viewDidDisappear(_ animated: Bool) {
        saveNote()
    }
}

