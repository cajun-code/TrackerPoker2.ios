//
//  CCCardViewController.h
//  TrackerPoker
//
//  Created by Allan Davis on 11/13/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCCardViewController : UIViewController
- (IBAction)closeCard:(id)sender;
@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) NSString *card;
@end
