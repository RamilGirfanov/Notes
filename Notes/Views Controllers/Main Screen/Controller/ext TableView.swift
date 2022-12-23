//
//  ext TableView.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 22.12.2022.
//

import UIKit

extension MainScreenTVC {
    
//    MARK: - Расширение UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RealmManager.shared.getNotes().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainScreenCell.identifier, for: indexPath) as! MainScreenCell
        
        let notes = RealmManager.shared.getNotes()
        
        cell.pullCell(note: notes[indexPath.row])
        
        return cell
    }
    
    
//    MARK: - Расширение UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        TODO: - Реализовать нажатие на ячейку
        presentNoteScreen(index: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Удалить") {_,_,_ in
            self.deleteNote(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        let swipeActions = UISwipeActionsConfiguration(actions: [deleteAction])
        
        return swipeActions
    }
    
}
