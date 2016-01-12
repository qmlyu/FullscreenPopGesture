//
//  TwoVC.m
//  testPOP
//
//  Created by 淘发现4 on 16/1/11.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "TwoVC.h"

@implementation TwoVC

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
//    self.navigationController.navigationBar.hidden = NO;

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    self.navigationController.navigationBar.hidden = NO;
}

//-(void)viewDidDisappear:(BOOL)animated{
//    [super viewDidDisappear:animated];
//    
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
//}

//-(void)viewWillDisappear:(BOOL)animated{
//    [super viewWillDisappear:animated];
//    
////    self.navigationController.navigationBar.hidden = YES;
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
//}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.title = @"第二页";
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.hidden = NO;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn sizeToFit];
    btn.frame = CGRectMake(100, 100, 100, 50);
//    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)clickBtn{
//    [self.navigationController pushViewController:[OneVC new] animated:YES];
}

@end
