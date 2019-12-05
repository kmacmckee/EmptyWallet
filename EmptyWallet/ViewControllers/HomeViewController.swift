//
//  HomeViewController.swift
//  EmptyWallet
//
//  Created by Kobe McKee on 11/5/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var graphicView: UIView!
    @IBOutlet weak var transactionTableView: UITableView!
    
    let transactionController = TransactionController()
    var transactionDates: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        transactionTableView.delegate = self
        transactionTableView.dataSource = self
        transactionTableView.reloadData()
        
        NotificationCenter.default.addObserver(self, selector: #selector(refreshTableView), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    
    @objc func refreshTableView() {
        transactionTableView.reloadData()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MM - dd - yyyy"
        
        for transaction in transactionController.getAllTransactions() {
            let date = dateFormatterPrint.string(from: transaction.date)
            if !transactionDates.contains(date) {
                transactionDates.append(date)
            }
            
        }
        return transactionDates.count
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return transactionDates[section]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MM - dd - yyyy"
        var rows = 0
        let date = transactionDates[section]
        for transaction in transactionController.allTransactions {
            let transactionDate = dateFormatterPrint.string(from: transaction.date)
            if transactionDate == date {
                rows += 1
            }
            
        }
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionTableViewCell
        let transaction = transactionController.allTransactions[indexPath.row]
        cell.amountLabel.text = formatter.string(for: transaction.amount)
        cell.recipientLabel.text = transaction.recipient
        cell.categoryLabel.text = transaction.category.description
        return cell
    
    }
    
    
    

    
    // MARK: - Navigation

     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTransaction" {
            guard let destination = segue.destination as? TransactionViewController else { return }
            destination.transactionController = transactionController
        }

    }
    

}
