//
//  MBTabBarController.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/18/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit

class MBTabBarController: UITabBarController {
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      
      let myBookmarksVC = MyBookmarksViewController(nibName: "MyBookmarksViewController", bundle: nil)
      let myBookmarksNavController = UINavigationController(rootViewController: myBookmarksVC)
      myBookmarksNavController.navigationBar.translucent = false
      let myTagsVC = MyTagsViewController(nibName: "MyTagsViewController", bundle: nil)
      let feedVC = FeedViewController(nibName: "FeedViewController", bundle: nil)
      let newBookmarkSearchVC = NewBookmarkSearchViewController(nibName: "NewBookmarkSearchViewController", bundle: nil)
      let profileVC = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
      
      let controllers = [myBookmarksNavController, myTagsVC, newBookmarkSearchVC, feedVC, profileVC]
      self.viewControllers = controllers
      
      let imgTitle = "skull.png"
      let myBookmarksImage = UIImage(named: imgTitle)
      let myTagsImage = UIImage(named: imgTitle)
      let feedImage = UIImage(named: imgTitle)
      let newBookmarkSearchImage = UIImage(named: "addBookmark.png")
      let profileImage = UIImage(named: imgTitle)
      let objcImage = UIImage(named: imgTitle)
      
      myBookmarksVC.tabBarItem = UITabBarItem(title: "My Bookmarks", image: myBookmarksImage, tag: 1)
      myTagsVC.tabBarItem = UITabBarItem(title: "My Tags", image: myTagsImage, tag: 2)
      newBookmarkSearchVC.tabBarItem = UITabBarItem(title: "New Bookmarks", image: newBookmarkSearchImage, tag: 3)
      feedVC.tabBarItem = UITabBarItem(title: "Feed", image: feedImage, tag: 4)
      profileVC.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 5)
      profileVC.tabBarItem.title = "Profile" //not working

      
      
      

      
      var buttonStaindin = UIImageView(image: UIImage(named: "addBookmark.png"))
      buttonStaindin.setTranslatesAutoresizingMaskIntoConstraints(false)
      self.view.addSubview(buttonStaindin)

      var xConstraint = NSLayoutConstraint(item: buttonStaindin, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0)
      var yConstraint = NSLayoutConstraint(item: buttonStaindin, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -15.0)
//      var wConstraint = NSLayoutConstraint(item: buttonStaindin, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 200)
//      var hConstraint = NSLayoutConstraint(item: buttonStaindin, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 200)
      
      self.view.addConstraints([xConstraint, yConstraint])
      
      
      
 
      
      for item in self.tabBar.items as [UITabBarItem] {
        if let image = item.image {
          item.image = image.imageWithColor(UIColor.yellowColor()).imageWithRenderingMode(.AlwaysOriginal)
          if item.tag == 3 {
            item.image = UIImage(named: "addBookmark.png")
          }
        }
      }
      
      self.tabBar.selectedImageTintColor = UIColor.orangeColor()
      self.tabBar.alpha = 0.5
      self.tabBar.backgroundColor = UIColor.clearColor()
      

    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    // MARK: - Navigation

}


extension UIImage {
  func imageWithColor(tintColor: UIColor) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
    
    let context = UIGraphicsGetCurrentContext() as CGContextRef
    CGContextTranslateCTM(context, 0, self.size.height)
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal)
    
    let rect = CGRectMake(0, 0, self.size.width, self.size.height) as CGRect
    CGContextClipToMask(context, rect, self.CGImage)
    tintColor.setFill()
    CGContextFillRect(context, rect)
    
    let newImage = UIGraphicsGetImageFromCurrentImageContext() as UIImage
    UIGraphicsEndImageContext()
    
    return newImage
  }
}
