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
    
    private var _source1: String!
    private var _title1: String!
    private var _link1: String!
    private var _source2: String!
    private var _title2: String!
    private var _link2: String!
    private var _source3: String!
    private var _title3: String!
    private var _link3: String!
    
    // Possibly add in some code to check for nil & ""
    // github.com/zhiyao92/JSON-API/blob/master/API%20JSON/News.swift
    
    var source1: String {
        if _source1 == nil {
            _source1 = ""
        }
        return _source1
    }
    
    var title1: String {
        if _title1 == nil {
            _title1 = ""
        }
        return _title1
    }
    
    var link1: String {
        if _link1 == nil {
            _link1 = ""
        }
        return _link1
    }
    
    var source2: String {
        if _source2 == nil {
            _source2 = ""
        }
        return _source2
    }
    
    var title2: String {
        if _title2 == nil {
            _title2 = ""
        }
        return _title2
    }
    
    var link2: String {
        if _link2 == nil {
            _link2 = ""
        }
        return _link2
    }
    
    var source3: String {
        if _source3 == nil {
            _source3 = ""
        }
        return _source3
    }
    
    var title3: String {
        if _title3 == nil {
            _title3 = ""
        }
        return _title3
    }
    
    var link3: String {
        if _link3 == nil {
            _link3 = ""
        }
        return _link3
    }

    // Closure

    func downloadNews(completed: @escaping DownloadComplete) {
        
        Alamofire.request(API_URL).responseJSON { (response) in
            
            let result = response.result
            let json = JSON(result.value!)
            
            self._source1 = json["articles"][0]["source"]["name"].stringValue
            
            self._title1 = json["articles"][0]["title"].stringValue
            
            self._link1 = json["articles"][0]["url"].stringValue
            
            self._source2 = json["articles"][1]["source"]["name"].stringValue
            
            self._title2 = json["articles"][1]["title"].stringValue
            
            self._link2 = json["articles"][1]["url"].stringValue
            
            self._source3 = json["articles"][2]["source"]["name"].stringValue
            
            self._title3 = json["articles"][2]["title"].stringValue
            
            self._link3 = json["articles"][2]["url"].stringValue
  
            completed()
        }
    }
}
