//
//  TransactionController.swift
//  EmptyWallet
//
//  Created by Kobe McKee on 11/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation

class TransactionController {
    

    
    var allTransactions: [Transaction] = [ Transaction(amount: 20.00, date: Date(timeIntervalSinceNow: 20.00), recipient: "Kobe", recurringDate: nil,       isRecurringPayment: false, isSubscription: false, category: SpendingCategory.Clothing),
                                           Transaction(amount: 100.00, date: Date(timeIntervalSinceNow: 30.00), recipient: "Kobe", recurringDate: nil,
                                                    isRecurringPayment: false, isSubscription: false, category: SpendingCategory.Food),
                                           Transaction(amount: 400.00, date: Date(timeIntervalSinceNow: 400.00), recipient: "Kobe", recurringDate: nil, isRecurringPayment: false, isSubscription: false, category: SpendingCategory.Entertainment),
                                           Transaction(amount: 50.00, date: Date(timeIntervalSinceNow: 10.00), recipient: "Kobe", recurringDate: nil, isRecurringPayment: false, isSubscription: false, category: SpendingCategory.Health)
    ]
    var thisWeeksTransactions: [Transaction] = []
    var thisMonthsTransactions: [Transaction] = []
    var thisYearsTransactions: [Transaction] = []
    
    
    func getAllTransactions() -> [Transaction] {
        return allTransactions.sorted(by: { $0.date < $1.date })
    }
    
    func getWeeksTransactions() -> [Transaction] {
        
        return []
    }
    
    func getMonthsTransactions() -> [Transaction] {
        
        return []
    }
    
    func getYearsTransactions() -> [Transaction] {
        
        return []
    }
    
    
    
    
    
    func addTransaction(transaction: Transaction) {
        
        allTransactions.append(transaction)
        
    }
    
    
    
    
}
