//
//  Message.swift
//  ChatAppDemo
//
//  Created by Artush on 01.04.2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timeStamp: Date
}
