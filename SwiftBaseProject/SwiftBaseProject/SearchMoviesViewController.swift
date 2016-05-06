//
//  SearchMoviesViewController.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/20/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

class SearchMoviesViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: MoviesListActionListener!
    var dataSource: BaseTableViewDataSource<Movie, MovieTitleTableViewCell>!
    var delegate: BaseTableViewDelegate<BaseTableViewDataSource<Movie, MovieTitleTableViewCell>, MoviesListPresenter<SearchMoviesViewController>>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter = MoviesListPresenter(view: self, router: MoviesRouting())
        
        dataSource = BaseTableViewDataSource()
        delegate = BaseTableViewDelegate(dataSource: dataSource, presenter: presenter as! MoviesListPresenter<SearchMoviesViewController>)
        
        //Tableview setup
        tableView.estimatedRowHeight = 70
        tableView.rowHeight = UITableViewAutomaticDimension
        
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        
        searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SearchMoviesViewController: MoviesListView {
    
    func displayMovies(movies: [Movie]) {
        
        dataSource.items = movies
        tableView.reloadData()
    }
    
    func displayError(error: String) {
        
    }
}

extension SearchMoviesViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        if let text = searchBar.text {
            presenter.searchAllMoviesWithString(text)
        }
        
        searchBar.endEditing(true)
        
    }
}
