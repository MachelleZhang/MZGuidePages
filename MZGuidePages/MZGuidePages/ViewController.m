//
//  ViewController.m
//  MZGuidePages
//
//  Created by boco on 15/11/11.
//  Copyright © 2015年 Machelle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"main page";
    label.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:label];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
