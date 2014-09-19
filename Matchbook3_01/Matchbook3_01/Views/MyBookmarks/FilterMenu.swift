//
//  FilterMenu.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/18/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit



class FilterMenu: UIView {

  override func awakeAfterUsingCoder(aDecoder: NSCoder!) -> AnyObject! {
    if self.subviews.count == 0 {
      let bundle = NSBundle(forClass: self.dynamicType)
      var view = bundle.loadNibNamed("FilterMenu" , owner: nil, options: nil)[0] as FilterMenu
      view.setTranslatesAutoresizingMaskIntoConstraints(false)
      let contraints = self.constraints()
      self.removeConstraints(contraints)
      view.addConstraints(contraints)
      return view
    }
    return self
  }
}




//protocol MyBookmarksToolbarProtocol {
//  func sortTapped()
//}
//
//class MyBookmarksToolbar: UIView {
//  
//  var delegate: MyBookmarksToolbarProtocol?
//  
//  override func awakeAfterUsingCoder(aDecoder: NSCoder!) -> AnyObject! {
//    if self.subviews.count == 0 {
//      let bundle = NSBundle(forClass: self.dynamicType)
//      var view = bundle.loadNibNamed("MyBookmarksToolbar" , owner: nil, options: nil)[0] as MyBookmarksToolbar
//      view.setTranslatesAutoresizingMaskIntoConstraints(false)
//      let contraints = self.constraints()
//      self.removeConstraints(contraints)
//      view.addConstraints(contraints)
//      return view
//    }
//    return self
//  }
//  
//  @IBAction func sortTapped(sender: AnyObject) {
//    self.delegate?.sortTapped()
//  }
//  
//}
