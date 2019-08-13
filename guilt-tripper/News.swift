//
//  News.swift
//  guilt-tripper
//
//  Created by Rachel Griffiths on 13/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class News {
    
    private var _name: String!
    private var _title: String!
    private var _link: String!
    
    // Possibly add in some code to check for nil & ""
    // github.com/zhiyao92/JSON-API/blob/master/API%20JSON/News.swift

    // Closure

    func downloadNews(completed: @escaping DownloadComplete) {
        
        Alamofire.request(API_URL).responseJSON { (response) in
            
            let result = response.result
            let json = JSON(result.value!)
            
            self._name = json["articles"][1]["source"]["name"].stringValue
            
            self._title = json["articles"][1]["title"].stringValue
            
            self._link = json["articles"][1]["url"].stringValue
            
            completed()
        }
    }
}
