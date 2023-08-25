//
//  Extension.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation

extension Dictionary {
    func toJSONString() -> String? {
        if let theJSONData = try? JSONSerialization.data(withJSONObject: self, options: []) {
            return String(data: theJSONData,encoding: .utf8)
        }
        
        return nil
    }
}

extension Array {
    func toJSONString() -> String? {
        if let theJSONData = try? JSONSerialization.data(withJSONObject: self, options: []) {
            return String(data: theJSONData,encoding: .utf8)
        }
        
        return nil
    }
}
