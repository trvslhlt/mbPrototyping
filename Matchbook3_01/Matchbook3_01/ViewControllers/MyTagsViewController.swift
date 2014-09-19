//
//  MyTagsViewController.swift
//  Matchbook3_01
//
//  Created by trvslhlt on 9/15/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

import UIKit

class MyTagsViewController: MBViewController {
  
  @IBOutlet weak var scrollView: UIScrollView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    ////
    
    self.addImageToVerticalScrollView(self.scrollView, imageName: "tagsList.jpg")
  }

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
