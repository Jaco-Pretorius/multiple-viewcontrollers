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
@property (strong, nonatomic) NavBarViewController *navBarViewController;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navBarViewController = [[NavBarViewController alloc] init];
    self.navBarViewController.view.frame = CGRectMake(0, -75, 320, 75);
    
    [self addChildViewController:self.navBarViewController];
    [self.view addSubview:self.navBarViewController.view];
}

- (IBAction)doSomeAction
{
    NSLog(@"Do some action on main ViewController");
}

- (IBAction)toggleNavBar:(UIButton *)sender
{
    self.navBarViewController.view.frame = CGRectMake(0, 0, 320, 75);
}

@end
