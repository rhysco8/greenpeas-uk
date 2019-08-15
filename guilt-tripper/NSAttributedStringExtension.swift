//
//  NSAttributedStringExtension.swift
//  guilt-tripper
//
//  Created by Rhys on 15/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import Foundation

extension NSAttributedString {
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString {
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
    }
}
