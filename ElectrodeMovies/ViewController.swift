//
//  ViewController.swift
//  ElectrodeMovies
//
//  Created by Alan Jeferson on 7/30/19.
//  Copyright © 2019 Alan Paiva. All rights reserved.
//

import UIKit
import ElectrodeContainer

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let movieListMiniAppViewController = ElectrodeReactNative.sharedInstance().miniApp(withName: "MovieListMiniApp", properties: nil)
    let movieListView = movieListMiniAppViewController.view as UIView
    view.addSubview(movieListView)
    movieListView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: movieListView.topAnchor),
      view.bottomAnchor.constraint(equalTo: movieListView.bottomAnchor),
      view.leadingAnchor.constraint(equalTo: movieListView.leadingAnchor),
      view.trailingAnchor.constraint(equalTo: movieListView.trailingAnchor)
      ])
    movieListMiniAppViewController.didMove(toParent: self)
    
    ElectrodeBridgeHolder.registerRequestHandler(withName: "br.com.foo") { (data, completion) in
      let arr = [
        [
          "id": "3",
          "title": "Spider Man: Far From Home",
          "year": "2019",
          "image": [
            "uri": "https://image.tmdb.org/t/p/w1280/rjbNpRMoVvqHmhmksbokcyCr7wn.jpg"
          ]
        ],
        [
          "id": "4",
          "title": "The Angry Birds Movie 2",
          "year": "2019",
          "image": [
            "uri": "https://image.tmdb.org/t/p/w1280/hdYTrfRKrzdbZ3DE72YxmeB0RNg.jpg"
          ]
        ]
      ];
      completion(arr, nil)
    }
  }
}

