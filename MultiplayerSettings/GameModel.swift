//
//  GameModel.swift
//  OpenProf
//
//  Created by Adam HAISSOUBI-VOGIER on 10/04/2021.
//

import Foundation
import UIKit
import GameKit

struct GameModel: Codable {
    var players: [Player] = []
    var time: Int = 60
}

extension GameModel {
    func encode() -> Data? {
        return try? JSONEncoder().encode(self)
    }
    
    static func decode(data: Data) -> GameModel? {
        return try? JSONDecoder().decode(GameModel.self, from: data)
    }
}
