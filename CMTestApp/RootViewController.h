//
//  RootViewController.h
//  CMTestApp
//
//  Created by Adam Hinz on 3/18/12.
//  Copyright (c) 2012 Azavea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
