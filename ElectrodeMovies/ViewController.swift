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
    movieListMiniAppViewController.view.frame = view.bounds
    view.addSubview(movieListMiniAppViewController.view)
    movieListMiniAppViewController.didMove(toParent: self)
  }
}

