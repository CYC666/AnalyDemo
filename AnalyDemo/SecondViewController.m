//
//  SecondViewController.m
//  AnalyDemo
//
//  Created by 曹老师 on 2018/2/24.
//  Copyright © 2018年 曹老师. All rights reserved.
//

#import "SecondViewController.h"
#import <AnalySDK/AnalySDK.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"这里是第二个页面";
    
    
}


- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    // 第二个页面已经显示
    [AnalySDK trackEvent:@"NEXTVIEW" eventParams:@{@"data":@"这里是第二个页面"}];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
