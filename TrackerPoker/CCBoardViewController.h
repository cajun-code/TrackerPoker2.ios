//
//  CCBoardViewController.h
//  TrackerPoker
//
//  Created by Allan Davis on 10/18/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCBoardViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
