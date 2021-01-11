//
//  YSViewController.m
//  YSSeatsPicker
//
//  Created by yu on 12/08/2017.
//  Copyright (c) 2017 yu. All rights reserved.
//

#import "YSViewController.h"

#import "YSSeatsSelectionsViewController.h"

@interface YSViewController ()

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"跳转选座" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
}

- (void)jump {
    YSSeatsSelectionsViewController *vc = [YSSeatsSelectionsViewController new];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
