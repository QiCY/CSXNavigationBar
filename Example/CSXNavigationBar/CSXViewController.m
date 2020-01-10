//
//  CSXViewController.m
//  CSXNavigationBar
//
//  Created by acct<blob>=0xE6B48BE891B1E5A4A7E4B8B0E694B6 on 01/10/2020.
//  Copyright (c) 2020 acct<blob>=0xE6B48BE891B1E5A4A7E4B8B0E694B6. All rights reserved.
//

#import "CSXViewController.h"
#import <CSXNavBar.h>
@interface CSXViewController ()

@end

@implementation CSXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CSXNavBar *navBar = [[CSXNavBar alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    [self.view addSubview:navBar];
    
    navBar.titleLab.text = @"首页";
    [navBar.leftBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    navBar.leftBtnClick = ^{
        NSLog(@"左边按钮点击了");
    };
    [navBar.leftBtn setTitle:@"左边按钮" forState:UIControlStateNormal];
    
    
    [navBar.rightBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [navBar.rightBtn setTitle:@"右边按钮" forState:UIControlStateNormal];
    navBar.rightBtnClick = ^{
        NSLog(@"右边按钮点击了");
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
