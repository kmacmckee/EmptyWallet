//
//  Transaction.swift
//  EmptyWallet
//
//  Created by Kobe McKee on 11/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation


struct Transaction {
    
    let amount: Double
    let date: Date
    let recipient: String
    
    var recurringDate: Date?
    var isRecurringPayment: Bool?
    var isSubscription: Bool?
    
    var category: SpendingCategory
    
}


enum SpendingCategory: Int {
    case Food = 0
    case Travel = 1
    case Entertainment = 2
    case Clothing = 3
    case Health = 4
    case Other = 5
    
    static var count: Int { return SpendingCategory.Other.rawValue + 1}
    
    var description: String {
        switch self {
        case .Food: return "Food"
        case .Travel: return "Travel"
        case .Entertainment: return "Entertainment"
        case .Clothing: return "Clothing"
        case .Health: return "Health"
        case .Other: return "Other"
        }
    }
}
