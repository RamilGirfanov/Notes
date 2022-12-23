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
        
        let barButtonAdd = UIBarButtonItem(image: UIImage(systemName: "plus.app.fill"), style: .plain, target: self, action: #selector(presentAddNoteScreen))
        navigationItem.rightBarButtonItem = barButtonAdd
        
        tableView.register(MainScreenCell.self, forCellReuseIdentifier: MainScreenCell.identifier)
    }


//    MARK: - Lifecycle
    

    override func viewDidLoad() {
        super.viewDidLoad()
        testNote()
        setupScreen()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
