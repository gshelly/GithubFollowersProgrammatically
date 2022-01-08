//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/7/22.
//

import UIKit

extension String {
    
    func convertStringToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = convertStringToDate() else { return "NA"}
        return date.convertToMonthYearFormat()
    }
}
