//
//  MyBookmarksViewController.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/15/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit






class MyBookmarksViewController:
  MBViewController,
  UIScrollViewDelegate,
  MyBookmarksToolbarProtocol,
  MBNavTitleViewProtocol
  
{
  
  
  
 
  
  let bookmarkCellReuseID = "BookmarkCellReuseID"
  
  //IBOutlets
  @IBOutlet weak var sortBarHeight: NSLayoutConstraint!
  @IBOutlet weak var headerImageView: UIImageView!
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var myBookmarksToolbar: MyBookmarksToolbar!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  var showSortChoices: Bool? {
    
    didSet{
      struct Static {
        static var token : dispatch_once_t = 0
        static var sortBarExpandedHeight: CGFloat?
      }
      
      dispatch_once(&Static.token, {
        Static.sortBarExpandedHeight = self.sortBarHeight.constant
      })

      if ((self.showSortChoices?) != nil) {
        if (self.showSortChoices!){
          self.sortBarHeight.constant = Static.sortBarExpandedHeight!
        } else {
          self.sortBarHeight.constant = 0
        }
      }
    }
  }
  
//  var showFilterChoices: Bool? {
//    
//    didSet{
//      struct Static {
//        static var token : dispatch_once_t = 0
//        static var filterBarExpandedHeight: CGFloat?
//      }
//      
//      dispatch_once(&Static.token, {
//        Static.filterBarExpandedHeight = self.filterBarHeight.constant
//      })
//      
//      if ((self.showFilterChoices?) != nil) {
//        if (self.showFilterChoices!){
//          self.BarHeight.constant = Static.sortBarExpandedHeight!
//        } else {
//          self.sortBarHeight.constant = 0
//        }
//      }
//    }
//  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.showSortChoices = false
    self.sortBarHeight.constant = 0
    
    self.myBookmarksToolbar.delegate = self
    self.mbNavigationController?.auxNavView?.delegate = self
    self.title = "TTTTTT"
    
    addGestureRecognizers()
    setRightBarButton(iconName: "skull.png", paddingToEdge: 0.0)
    setLeftBarButton(iconName: "skull.png", paddingToEdge: 0.0)

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
    if ((self.showSortChoices?) != nil){
      self.showSortChoices = !self.showSortChoices!
    }
  }
  
  func filterTapped(){
   // self.showFilterChoices = !self.showFilterChoices!
  }
  
  func mapTapped(){
    
  }
  
  func searchTapped() {
    
  }
  
  // MARK: MBNavTitleViewProtocol
  func navAuxButtonTapped(){
    
  }
}








