//
//  AppDelegate.swift
//  ElectrodeMovies
//
//  Created by Alan Jeferson on 7/30/19.
//  Copyright © 2019 Alan Paiva. All rights reserved.
//

import UIKit
import ElectrodeContainer

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let config = ElectrodeContainerConfig()
    config.debugEnabled = false
    ElectrodeReactNative.start(withConfigurations: config)
    return true
  }
}

