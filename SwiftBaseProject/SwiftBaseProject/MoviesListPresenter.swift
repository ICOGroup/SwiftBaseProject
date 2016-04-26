//
//  MoviesListPresenter.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/20/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

class MoviesListPresenter<V: MoviesListView>: BasePresenter<V> {

    var interactor: MoviesListProvider!
    
    override init(view: V, router: Routing) {
        super.init(view: view, router: router)
        
        interactor = MoviesListInteractor(dataOutput: self, repository: MoviesRepositoryImpl())
    }
}

extension MoviesListPresenter: MoviesListActionListener{
    
    func searchAllMoviesWithString(string: String) {
        
        interactor.queryForMoviesWithTitle(string)
    }
}

extension MoviesListPresenter: MoviesListDataOutput {
    
    func moviesResult(movies: [Movie]) {
        
        view.displayMovies(movies)
    }
    
    func queryError(error: String) {
    
        view.displayError(error)
    }
}

extension MoviesListPresenter: BaseTableViewPresenter {
    
    func onItemClick(item: Movie, position: Int) {
        
        print("Movie clicked: "+item.title!)
    }
}
