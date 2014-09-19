//
//  MBNavigationController.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/19/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit



class MBNavigationController: UINavigationController {
  
  //constants
  let kAuxNavViewWidth: CGFloat = 0.2

  var auxNavView: MBNavTitleView?
  
    override func viewDidLoad() {
      super.viewDidLoad()

      UINavigationBar.appearance().barTintColor = UIColor.darkGrayColor()
      UINavigationBar.appearance().tintColor = UIColor.whiteColor()
      
      self.navigationBar.translucent = false
      self.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Arial", size: 20)]
      self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

      self.auxNavView = UIView.loadFromNibNamed("MBNavTitleView") as? MBNavTitleView

      self.auxNavView?.setTranslatesAutoresizingMaskIntoConstraints(false)
      self.navigationBar.addSubview(self.auxNavView!)
      
      
      var xConstraint = NSLayoutConstraint(item: self.auxNavView!, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.navigationBar, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0)
      var yConstraint = NSLayoutConstraint(item: self.auxNavView!, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.navigationBar, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
      var wConstraint = NSLayoutConstraint(item: self.auxNavView!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.navigationBar, attribute: NSLayoutAttribute.Width, multiplier: kAuxNavViewWidth, constant: 100)
      var hConstraint = NSLayoutConstraint(item: self.auxNavView!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self.navigationBar, attribute: NSLayoutAttribute.Height, multiplier: 1.0, constant: 0)
      
      self.view.addConstraints([xConstraint, yConstraint, wConstraint, hConstraint])

      
      
      
      
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
