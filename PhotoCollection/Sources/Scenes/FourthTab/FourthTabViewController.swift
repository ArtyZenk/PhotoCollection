//
//  FourthTabViewController.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

final class FourthTabViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
    }
}

extension FourthTabViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text ?? "")
    }
}
