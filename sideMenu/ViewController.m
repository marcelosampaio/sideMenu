//
//  ViewController.m
//  sideMenu
//
//  Created by Marcelo Sampaio on 7/25/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *storyBoardId;
    if (IS_IPAD_DEVICE) {
        storyBoardId=@"Main_iPad";
    } else {
        storyBoardId=@"Main_iPhone";
    }
    
    UIViewController *mainvc = [[UIStoryboard storyboardWithName:storyBoardId bundle:nil] instantiateViewControllerWithIdentifier:@"mainViewController"];
	[[mainvc view] addGestureRecognizer:[self panGesture]];
	
	[self setMainViewController:mainvc];
	[self setLeftViewController:[[UIStoryboard storyboardWithName:storyBoardId bundle:nil] instantiateViewControllerWithIdentifier:@"leftViewController"]];
//	[self setRightViewController:[[UIStoryboard storyboardWithName:@"SlidingViews" bundle:nil] instantiateViewControllerWithIdentifier:@"rightViewController"]];
//	
//	[self setShowTopViewShadow:YES];
//	[self setRightMainAnchorType:ADMainAnchorTypeResize];
    NSLog(@"inside");


}

-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
