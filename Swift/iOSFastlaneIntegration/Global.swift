//
//  Global.swift
//  iOSFastlaneIntegration
//
//  Created by John Lima on 02/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

class Global {
    
    struct Keys {
        static let jedi = "jedi"
        static let jedis = "jedis"
    }
    
    static func JSONFron(file: String) -> Any? {
        guard let path = Bundle.main.path(forResource: file, ofType: "json") else { return nil }
        guard let url = URL(string: "file://\(path)") else { return nil }
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            return json
        }catch {
            print("json error: \(error.localizedDescription)")
            return nil
        }
    }
}
