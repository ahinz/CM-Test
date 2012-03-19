//
//  DataViewController.h
//  CMTestApp
//
//  Created by Adam Hinz on 3/18/12.
//  Copyright (c) 2012 Azavea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@end
