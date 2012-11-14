//
//  CCBoardViewController.m
//  TrackerPoker
//
//  Created by Allan Davis on 10/18/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import "CCBoardViewController.h"

@interface CCBoardViewController ()
@property NSArray * scale;
@end

@implementation CCBoardViewController


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
    self.scale = @[@0,@1,@2,@3,@5,@8,@13,@20,@40,@100];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.scale.count;
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pointCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.scale[indexPath.row] stringValue]];
    
    return cell;
    
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"showCard" sender:self];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UIViewController *controller = (UIViewController*)segue.destinationViewController;
    if ([controller respondsToSelector:@selector(setCard:)]) {
        int pos = self.tableView.indexPathForSelectedRow.row;
        NSString *string = [self.scale[pos] stringValue];
        [controller performSelector:@selector(setCard:) withObject:string];
    }
}

@end
