//
//  NoteScreenVC.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import UIKit

protocol NoteScreenManager {
//    func addImage()
    func saveNote()
    func updateNote()
}

class NoteScreenVC: UIViewController {
    
//    MARK: - Экземпляр NoteScreen
    
    lazy var noteScreen = NoteScreen()
    
    
//    MARK: - Свойства для управления сохранением
    
    var noteWasOpen = false
    var index = 0
    
//    MARK: - Lifecycle
    
    override func loadView() {
        view = noteScreen
        setupNC()
        
//        let barButtonAddImage = UIBarButtonItem(image: UIImage(systemName: "photo.artframe"), style: .plain, target: self, action: #selector(addImage))
//        navigationItem.rightBarButtonItem = barButtonAddImage
        
        
    }
        
    override func viewDidDisappear(_ animated: Bool) {
        noteWasOpen ? updateNote() : saveNote()
    }
    
}

