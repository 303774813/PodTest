//
//  YKViewController.m
//  PodTest
//
//  Created by 303774813 on 01/05/2021.
//  Copyright (c) 2021 303774813. All rights reserved.
//

#import "YKViewController.h"
#import <PodTest/YKHelp.h>
@interface YKViewController ()

@end

@implementation YKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [YKBaseView printFrameString];
    YKHelp *help = [YKHelp new];
    [help sayHi];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
