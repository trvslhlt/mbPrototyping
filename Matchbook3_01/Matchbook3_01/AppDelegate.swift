//
//  AppDelegate.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/15/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  func application(application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
      let tabBarController = UITabBarController()
      
      UINavigationBar.appearance().barTintColor = UIColor.darkGrayColor()
      
      let myBookmarksVC = MyBookmarksViewController(nibName: "MyBookmarksViewController", bundle: nil)
      let myBookmarksNavController = UINavigationController()
      myBookmarksNavController.navigationBar.translucent = false
      myBookmarksNavController.pushViewController(myBookmarksVC, animated: false)
      let myTagsVC = MyTagsViewController(nibName: "MyTagsViewController", bundle: nil)
      let feedVC = FeedViewController(nibName: "FeedViewController", bundle: nil)
      let newBookmarkSearchVC = NewBookmarkSearchViewController(nibName: "NewBookmarkSearchViewController", bundle: nil)
      let profileVC = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
      let objcVC = ObjcViewController(nibName: "ObjcViewController", bundle: nil)
      
      let controllers = [myBookmarksNavController, myTagsVC, newBookmarkSearchVC, feedVC, objcVC]
      tabBarController.viewControllers = controllers
      window?.rootViewController = tabBarController
      
      let imgTitle = "skull.png"
      let myBookmarksImage = UIImage(named: imgTitle)
      let myTagsImage = UIImage(named: imgTitle)
      let feedImage = UIImage(named: imgTitle)
      let newBookmarkSearchImage = UIImage(named: imgTitle)
      let profileImage = UIImage(named: imgTitle)
      let objcImage = UIImage(named: imgTitle)
      
      myBookmarksVC.tabBarItem = UITabBarItem(title: "My Bookmarks", image: myBookmarksImage, tag: 1)
      myTagsVC.tabBarItem = UITabBarItem(title: "My Tags", image: myTagsImage, tag: 2)
      newBookmarkSearchVC.tabBarItem = UITabBarItem(title: "New Bookmarks", image: newBookmarkSearchImage, tag: 3)
      feedVC.tabBarItem = UITabBarItem(title: "Feed", image: feedImage, tag: 4)
      objcVC.tabBarItem = UITabBarItem(title: "ObjC", image: objcImage, tag: 5)
      //profileVC.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 5)
      //profileVC.tabBarItem.title = "Profile" //not working

      return true
  }
  
  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

