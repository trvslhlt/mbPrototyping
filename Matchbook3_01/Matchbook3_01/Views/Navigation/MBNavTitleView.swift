//
//  MBNavTitleView.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/19/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit

protocol MBNavTitleViewProtocol {
  func navAuxButtonTapped()
}

class MBNavTitleView: UIView {

  var delegate: MBNavTitleViewProtocol?
  
  @IBAction func navAuxButtonTapped(sender: AnyObject) {
    self.delegate?.navAuxButtonTapped()
  }

}

