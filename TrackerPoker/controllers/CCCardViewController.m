//
//  CCCardViewController.m
//  TrackerPoker
//
//  Created by Allan Davis on 11/13/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import "CCCardViewController.h"

@interface CCCardViewController ()

@end

@implementation CCCardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = self.card;
    NSString *imageName = [NSString stringWithFormat:@"%@.png", self.card];
    //self.image.image = [UIImage imageWithContentsOfFile:imageName];
    self.image.image = [UIImage imageNamed:imageName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeCard:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}


@end
