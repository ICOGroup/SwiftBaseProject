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
    var dataSource: BaseTableViewDataSource<Movie, MovieTitleTableViewCell>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter = MoviesListPresenter(view: self, router: MoviesRouting())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SearchMoviesViewController: MoviesListView {
    
    func displayMovies(movies: [Movie]) {
        
    }
}

extension SearchMoviesViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        if let text = searchBar.text {
            presenter.searchAllMoviesWithString(text)
        }
        
    }
}
