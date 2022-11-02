//
//  ViewController.swift
//  FieldTestTask
//
//  Created by Roman on 22.10.2022.
//

import UIKit

final class MainViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    private func setupViews() {
        title = "Просмотр"
        view.backgroundColor = .white
    }
}

// MARK: - UITableViewDataSource
extension MainViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "test"
        return cell
    }
}
