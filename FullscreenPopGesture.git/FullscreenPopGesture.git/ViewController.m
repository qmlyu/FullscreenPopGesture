//
//  ViewController.m
//  testPOP
//
//  Created by 淘发现4 on 16/1/11.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "ViewController.h"
#import "OneVC.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
//    self.navigationController.navigationBar.hidden = YES;


- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"主页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn sizeToFit];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)clickBtn{
    [self.navigationController pushViewController:[OneVC new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
