//
//  ViewController.m
//  MultipleViewControllers
//
//  Created by Jaco on 4/19/13.
//  Copyright (c) 2013 Jaco. All rights reserved.
//

#import "ViewController.h"
#import "NavBarViewController.h"

@interface ViewController ()
@property BOOL isNavBarVisible;
@property (strong, nonatomic) NavBarViewController *navBarViewController;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navBarViewController = [[NavBarViewController alloc] init];
    self.navBarViewController.view.frame = CGRectMake(0, -75, 320, 75);
    self.isNavBarVisible = NO;
    
    [self addChildViewController:self.navBarViewController];
    [self.view addSubview:self.navBarViewController.view];
}

- (IBAction)doSomeAction
{
    NSLog(@"Do some action on main ViewController");
}

- (IBAction)toggleNavBar:(UIButton *)sender
{
    CGRect newFrame;
    if (self.isNavBarVisible)
        newFrame = CGRectMake(0, -75, 320, 75);
    else
        newFrame = CGRectMake(0, 0, 320, 75);
    
    [UIView animateWithDuration:0.3f animations:^{
        self.navBarViewController.view.frame = newFrame;
    }];
    
    self.isNavBarVisible = !self.isNavBarVisible;
}

@end
