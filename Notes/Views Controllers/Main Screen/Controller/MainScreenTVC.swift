//
//  MainScreenTVC.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import UIKit

protocol MainScreenManager {
    func deleteNote(index: Int)
    
    func presentAddNoteScreen()
    
    func presentNoteScreen(index: Int)
}

class MainScreenTVC: UITableViewController {
    
//    MARK: - Настройка экрана
    
    private func setupScreen() {
        navigationItem.title = "Заметки"
        
        
        tableView.register(MainScreenCell.self, forCellReuseIdentifier: MainScreenCell.identifier)
    }
    
    func addButton() {
        let barButtonAdd = UIBarButtonItem(image: UIImage(systemName: "plus.app.fill"), style: .plain, target: self, action: #selector(presentAddNoteScreen))
        navigationItem.rightBarButtonItem = barButtonAdd
    }


//    MARK: - Lifecycle
    
    override func loadView() {
//        testNote()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
        addButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
