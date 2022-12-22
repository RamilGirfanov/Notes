//
//  MainScreenCell.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import UIKit

class MainScreenCell: UITableViewCell {

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

//    MARK: - UI objects
    
    let noteTitle: UILabel = {
        let noteTitle = UILabel()
        noteTitle.font = .systemFont(ofSize: 20, weight: .bold)
        noteTitle.textAlignment = .center
        noteTitle.translatesAutoresizingMaskIntoConstraints = false
        return noteTitle
    }()
    
    let noteText: UILabel = {
        let noteText = UILabel()
        noteText.font = .systemFont(ofSize: 15)
        noteText.numberOfLines = 1
        noteText.translatesAutoresizingMaskIntoConstraints = false
        return noteText
    }()
    
//    MARK: - Layout
    
    private func layout() {
        [noteTitle, noteText].forEach { contentView.addSubview($0) }
        
        let safeIndent1: CGFloat = 20
        let safeIndent2: CGFloat = 8
        
        NSLayoutConstraint.activate([
            noteTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: safeIndent2),
            noteTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: safeIndent1),
            
            noteText.topAnchor.constraint(equalTo: noteTitle.bottomAnchor),
            noteText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: safeIndent1),
            noteText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -safeIndent2)
        ])
    }
    
//    MARK: - Функция заполнения
    
    func pullCell(note: Note) {
        noteTitle.text = note.title
        noteText.text = note.text
    }
    
    
//    MARK: - init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
