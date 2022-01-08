//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/7/22.
//

import UIKit

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "MMM yyyy"
        return dataFormatter.string(from: self)
    }
}
