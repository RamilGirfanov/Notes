//
//  NoteScreen.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import UIKit

class NoteScreen: UIView, UITextViewDelegate {
    
//    MARK: - UI objects
    
//    private let scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        return scrollView
//    }()
//
//    private let contentView: UIView = {
//        let contentView = UIView()
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        return contentView
//    }()

    let noteTitle: UITextField = {
        let noteTitle = UITextField()
        noteTitle.placeholder = "Название"
        noteTitle.font = .systemFont(ofSize: 20, weight: .bold)
//        noteTitle.numberOfLines = 0
        noteTitle.translatesAutoresizingMaskIntoConstraints = false
//        noteTitle.isUserInteractionEnabled = true
        return noteTitle
    }()
    
    let noteText: UITextView = {
        let noteText = UITextView()
        noteText.font = .systemFont(ofSize: 15)
        noteText.translatesAutoresizingMaskIntoConstraints = false
        return noteText
    }()
    
    
//    MARK: - Delegate
    
//    weak var delegate: NoteScreenManager?
    
    
//    MARK: - Targets
    
//    private func setupTargrt() {
//        let tapNoteTitle = UITapGestureRecognizer(target: self, action: #selector(editTitle))
//        noteTitle.addGestureRecognizer(tapNoteTitle)
//    }
//
//    @objc private func editTitle() {
//        print("!!!")
//        delegate?.presentAlert()
//    }
    
    
//    MARK: - Layout

    private func layout() {
//        addSubview(scrollView)
//        scrollView.addSubview(contentView)

        [noteTitle, noteText].forEach { addSubview($0) }
        
        let safeIndent1: CGFloat = 16
        
        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
//
//            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            noteTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: safeIndent1),
            noteTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: safeIndent1),
            noteTitle.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -safeIndent1),
            
            noteText.topAnchor.constraint(equalTo: noteTitle.bottomAnchor, constant: safeIndent1),
            noteText.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: safeIndent1),
            noteText.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -safeIndent1),
            noteText.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
//            text.heightAnchor.constraint(equalToConstant: 500)
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
//        setupTargrt()
        setupTextView()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
