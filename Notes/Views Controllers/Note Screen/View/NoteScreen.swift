//
//  NoteScreen.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import UIKit

class NoteScreen: UIView, UITextViewDelegate {
    
//    MARK: - UI objects

    let noteTitle: UITextField = {
        let noteTitle = UITextField()
        noteTitle.placeholder = "Название"
        noteTitle.font = .systemFont(ofSize: 20, weight: .bold)
        noteTitle.translatesAutoresizingMaskIntoConstraints = false
        return noteTitle
    }()
    
    let noteText: UITextView = {
        let noteText = UITextView()
        noteText.font = .systemFont(ofSize: 15)
        noteText.isSelectable = true
        noteText.dataDetectorTypes = .all
        noteText.translatesAutoresizingMaskIntoConstraints = false
        return noteText
    }()
    
    
//    MARK: - Layout

    private func layout() {
        [noteTitle, noteText].forEach { addSubview($0) }
        
        let safeIndent1: CGFloat = 16
        
        NSLayoutConstraint.activate([
            noteTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: safeIndent1),
            noteTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: safeIndent1),
            noteTitle.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -safeIndent1),
            
            noteText.topAnchor.constraint(equalTo: noteTitle.bottomAnchor),
            noteText.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: safeIndent1),
            noteText.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -safeIndent1),
            noteText.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
//    MARK: - Настройка TextView
    
    private func setupTextView() {
        noteText.delegate = self
        
    }
    
//    MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setupTextView()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
