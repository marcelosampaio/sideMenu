//
//  MainViewController.m
//  sideMenu
//
//  Created by Marcelo Sampaio on 7/25/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "MainViewController.h"
#import "ADSlidingViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize menuOutlet;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(BOOL)prefersStatusBarHidden {
    return YES;
}

- (IBAction)menu:(id)sender {
    [[self slidingViewController] anchorTopViewTo:ADAnchorSideRight];
    [self slidingViewController].showTopViewShadow=YES;
//    self.slidingViewController.leftViewAnchorWidth=160;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
