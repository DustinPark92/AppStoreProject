//
//  SearchView.swift
//  AppStoreProject
//
//  Created by Dustin on 2021/10/04.
//

import UIKit
import Then

class SearchView: BaseView {
    
    lazy var tableView = UITableView(frame: .zero, style: .plain).then {
        $0.register(SearchTableViewCell.self, forCellReuseIdentifier: "SearchTableViewCell")
        $0.register(SearchResultTableViewCell.self, forCellReuseIdentifier: "SearchResultTableViewCell")
        $0.backgroundColor = .white

    }
    

    
    let searchViewController = UISearchController(searchResultsController: nil).then {
        $0.searchBar.placeholder = "Enter"
        $0.obscuresBackgroundDuringPresentation = false
    }
    
    
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {

        self.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.top.edges.left.bottom.right.equalTo(self)
        }
        


    }
    
}

