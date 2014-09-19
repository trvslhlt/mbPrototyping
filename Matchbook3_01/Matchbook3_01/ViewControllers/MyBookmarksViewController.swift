//
//  MyBookmarksViewController.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/15/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit






class MyBookmarksViewController: MBViewController, UIScrollViewDelegate, MyBookmarksToolbarProtocol {
  
  
  
 
  
  let bookmarkCellReuseID = "BookmarkCellReuseID"
  
  @IBOutlet weak var headerImageView: UIImageView!
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var myBookmarksToolbar: MyBookmarksToolbar!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  //IBOutlets
  @IBOutlet weak var filterBarHeight: NSLayoutConstraint!
  
  var showFilterChoices: Bool? {
    
    didSet{
      struct Static {
        static var token : dispatch_once_t = 0
        static var filterBarExpandedHeight: CGFloat?
      }
      
      dispatch_once(&Static.token, {
        Static.filterBarExpandedHeight = self.filterBarHeight.constant
      })

      if ((self.showFilterChoices?) != nil) {
        if (self.showFilterChoices!){
          self.filterBarHeight.constant = Static.filterBarExpandedHeight!
        } else {
          self.filterBarHeight.constant = 0
        }
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.showFilterChoices = false
    self.filterBarHeight.constant = 0
    
    self.title = "My Bookmarks"
    self.myBookmarksToolbar.delegate = self
    
    addGestureRecognizers()
    setRightBarButton(iconName: "skull.png", paddingToEdge: 0.0)
    setLeftBarButton(iconName: "skull.png", paddingToEdge: 0.0)
    
//    for item in self.tabBar.items as [UITabBarItem] {
    
//      if let image = item.image {
//    var image = UIImage(named: "skull.png")
//      self.tabBarItem.image = image.imageWithColor(UIColor.clearColor()).imageWithRenderingMode(.AlwaysOriginal)
//    //}
//      }
//    }

  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    ////
    
    self.addImageToVerticalScrollView(self.scrollView, imageName: "bookmarksList1.png")
      }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

  // MARK: Setup
  func addGestureRecognizers(){
    self.scrollView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("bookmarkCellTapped:")))
  }
  
  
  // MARK: IBActions
  func bookmarkCellTapped(recognizer: UITapGestureRecognizer){
    self.navigationController?.pushViewController(BookmarkedPlaceDetail(nibName: "BookmarkedPlaceDetail", bundle: nil), animated: true)
  }
  
  func rightBarButtonAction(recognizer: UITapGestureRecognizer){
    
  }
  
  func leftBarButtonAction(recognizer: UITapGestureRecognizer){
    
  }

  // MARK: MyBookmarksToolbarProtocol
  func sortTapped(){
    if ((self.showFilterChoices?) != nil){
      self.showFilterChoices = !self.showFilterChoices!
    }
  }
  
}








