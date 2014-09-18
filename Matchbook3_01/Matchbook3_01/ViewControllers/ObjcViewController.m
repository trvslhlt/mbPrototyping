//
//  ObjcViewController.m
//  Matchbook3_01
//
//  Created by trvslhlt on 9/16/14.
//  Copyright (c) 2014 travis holt. All rights reserved.
//

#import "ObjcViewController.h"

@interface ObjcViewController ()

@end

@implementation ObjcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
  [self setup];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setup{
  
  UIView *subview = [[UIView alloc] init];
  subview.backgroundColor = [UIColor lightGrayColor];
  subview.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:subview];
  
  // create dictionary for VFL commands
  
  NSDictionary *views = @{@"subview" : subview, @"superview" : self.view};
  
  // add horizontal constraints
  
  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[subview]|" options:0 metrics:nil views:views]];
  
  // set the height of the offscreen subview to be the same as its superview
  
  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[subview(==superview)]" options:0 metrics:nil views:views]];
  
  // set the location of the subview to be just off screen below the current view
  
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:subview attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
  [self.view addConstraint:constraint];
  
  // then in two seconds, animate this subview back on-screen (i.e. change the top constraint `constant` to zero)
  
//  double delayInSeconds = 2.0;
//  dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//  dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//    constraint.constant = 0.0;
//    [UIView animateWithDuration:1.0
//                     animations:^{
                       [self.view layoutIfNeeded];
//                     }];
//  });
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
