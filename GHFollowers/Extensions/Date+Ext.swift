//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Pablo Dario Di Marco on 9/24/23.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
