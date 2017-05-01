//
//  HomeViewController.swift
//  iOSFastlaneIntegration
//
//  Created by John Lima on 29/04/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet fileprivate weak var tableView: UITableView!
    
    fileprivate let model = Model()
    fileprivate var data = [Model]()
    fileprivate let cellName = "cell"
    fileprivate let refreshControll = UIRefreshControl()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
        updateUI()
    }
    
    // MARK: - Actions
    fileprivate func updateUI() {
    
        refreshControll.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        refreshControll.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        
        let footer = UIView(frame: .zero)
        
        tableView.tableFooterView = footer
        tableView.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.1294117719, blue: 0.1411764771, alpha: 1)
        tableView.refreshControl = refreshControll
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    fileprivate func getData() {
        data = model.getData()
        refreshControll.endRefreshing()
    }
    
    dynamic fileprivate func refresh(sender: UIRefreshControl) {
        getData()
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource and UITableViewDelegate
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row].name
        cell.detailTextLabel?.text = data[indexPath.row].rank
        
        cell.textLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.detailTextLabel?.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        cell.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.1294117719, blue: 0.1411764771, alpha: 1)
        cell.contentView.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.1294117719, blue: 0.1411764771, alpha: 1)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
