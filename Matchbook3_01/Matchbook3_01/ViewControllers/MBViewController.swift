//
//  MBViewController.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/16/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit

class MBViewController: UIViewController {
  
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    self.setup()
  }
  
  func setup(){
//    navController = UINavigationController()
//    navController?.pushViewController(self, animated: false)
  }
  
  //var user: User?
  var loadingView: UIView?
  //var notificationBanner: StatusBannerView?
  

  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    
  
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
  

  // MARK: - Navigation

  
  
  func addImageToVerticalScrollView(scrollView: UIScrollView, imageName: String){
//    let theSubviews : [UIView] = scrollView.subviews as [UIView]
//    for view in theSubviews {
//      view.removeFromSuperview()
//    }
    
    var bookmarkListImage = UIImage(named: imageName)
    var imgView = UIImageView(image: bookmarkListImage)
    imgView.frame = CGRectMake(0, 0, bookmarkListImage.size.width, bookmarkListImage.size.height)
    imgView.contentMode = UIViewContentMode.ScaleAspectFit
    
    var scaleChange = imgView.frame.width / scrollView.bounds.width
    var imgViewFrame = imgView.frame
    var newImgViewFrame = CGRectMake(0, 0, imgViewFrame.size.width / scaleChange, imgViewFrame.size.height / scaleChange)
    imgView.frame = newImgViewFrame
    
    scrollView.addSubview(imgView)
    scrollView.contentSize = imgView.frame.size

  }

}
