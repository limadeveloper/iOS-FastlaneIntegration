//
//  Model.swift
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

import Foundation

struct Model {
    
    var id: Int?
    var name: String?
    var trainedBy: String?
    var rank: String?
    var holocronBio: String?
    
    init() {}
    
    init?(withJson: JSON) {
        guard withJson.count > 0 else { return }
        id = withJson[Keys.id] as? Int
        name = withJson[Keys.name] as? String
        trainedBy = withJson[Keys.trainedBy] as? String
        rank = withJson[Keys.rank] as? String
        holocronBio = withJson[Keys.holocronBio] as? String
    }
}

extension Model {
    struct Keys {
        static let id = "id"
        static let name = "name"
        static let trainedBy = "trainedBy"
        static let rank = "rank"
        static let holocronBio = "holocronBio"
    }
}

extension Model {

    func getData() -> [Model]? {
        
        var results = [Model]()
        
        guard let json = Global.JSONFron(file: Global.Keys.jedi) as? JSON else { return nil }
        guard let jedis = json[Global.Keys.jedis] as? [JSON], jedis.count > 0 else { return nil }
        
        for jedi in jedis {
            guard let object = Model(withJson: jedi) else { continue }
            results.append(object)
        }
        
        guard results.count > 0 else { return nil }
        
        return results
    }
}
