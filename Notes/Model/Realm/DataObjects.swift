//
//  DataObjects.swift
//  Notes
//
//  Created by Рамиль Гирфанов on 21.12.2022.
//

import Foundation
import RealmSwift

class Note: Object {
    @Persisted var name: String
    @Persisted var text: String
    
    convenience init(name: String, text: String) {
        self.init()
        self.name = name
        self.text = text
    }
}
