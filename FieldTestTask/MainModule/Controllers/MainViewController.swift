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
        Resources.nameFields.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainTableViewCell else { return UITableViewCell()}
        
        let nameField = Resources.nameFields.allCases[indexPath.row].rawValue
        
        cell.textLabel?.text = nameField
        return cell
    }
}
