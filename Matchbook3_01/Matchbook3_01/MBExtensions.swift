//
//  MBExtensions.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/19/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import Foundation
import UIKit



// MARK: UIView

//allows us to load custom views from nibs programmatically
extension UIView {
  class func loadFromNibNamed(nibNamed: String, bundle : NSBundle = NSBundle.mainBundle()) -> UIView! {
    return UINib(nibName: nibNamed, bundle: bundle).instantiateWithOwner(nil, options: nil)[0] as? UIView
  }
}