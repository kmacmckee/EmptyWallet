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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transactionTableView.delegate = self
        transactionTableView.dataSource = self
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
