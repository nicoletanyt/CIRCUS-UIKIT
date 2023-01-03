//
//  BenefitsViewController.swift
//  CIRCUS-UIKIT
//
//  Created by NICOLE TAN YITONG stu on 3/1/23.
//

import UIKit

class BenefitsViewController: UIViewController, UISearchResultsUpdating {
    
    let searchController: UISearchController = {
        //Create new view controller to show results
        let results = UIViewController()
        let vc = UISearchController(searchResultsController: results)
        vc.searchBar.placeholder = "Search for coupons"
        vc.searchBar.searchBarStyle = .minimal
        vc.definesPresentationContext = true
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Benefits"
        view.backgroundColor = .systemBackground
        //Displays search controller
        navigationItem.searchController = searchController
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        //if search field only consists of spaces or nothing
        guard let query  = searchController.searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
    }
    
    
}
