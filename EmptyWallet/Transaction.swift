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
    
    var recurringDate: Date
    var isRecurringPayment: Bool
    var isSubscription: Bool
    
    var category: SpendingCategory
    
}


enum SpendingCategory {
    case food
    case travel
    case entertainment
    case clothing
    case upkeep
}
