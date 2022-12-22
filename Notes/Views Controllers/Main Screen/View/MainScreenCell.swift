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
    
    var noteTitle: UILabel = {
        var noteTitle = UILabel()
        noteTitle.font = .systemFont(ofSize: 20, weight: .bold)
        noteTitle.textAlignment = .center
        noteTitle.translatesAutoresizingMaskIntoConstraints = false
        return noteTitle
    }()
    
//    MARK: - Layout
    
    private func layout() {
        addSubview(noteTitle)
        contentView.translatesAutoresizingMaskIntoConstraints = false

        let safeIndent: CGFloat = 20

        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 44),
            
            noteTitle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//            noteTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: safeIndent),
            noteTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: safeIndent),
//            noteTitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -safeIndent)
        ])
    }
    
//    MARK: - Функция заполнения
    
    func pullCell(note: Note) {
        noteTitle.text = note.name
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
