//
//  ViewController.m
//  AnalyDemo
//
//  Created by 曹老师 on 2018/2/24.
//  Copyright © 2018年 曹老师. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import <AnalySDK/AnalySDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 给shareSDK发送信息
    [AnalySDK trackEvent:@"APP启动次数" eventParams:@{@"APP_Start":@"count+1"}];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchButtonAction:(UIButton *)sender {
    
    NSLog(@"大表哥");
    
    NSDate *currentDate = [NSDate date];
    NSCalendar * cal = [NSCalendar currentCalendar];
    NSUInteger unitFlags = kCFCalendarUnitYear|kCFCalendarUnitMonth|kCFCalendarUnitDay|kCFCalendarUnitHour|kCFCalendarUnitMinute|kCFCalendarUnitSecond;
    NSDateComponents * conponent = [cal components:unitFlags fromDate:currentDate];
    NSString *dateStr = [NSString stringWithFormat:@"%ld-%ld-%ld %ld:%ld:%ld", conponent.year,conponent.month,conponent.day,conponent.hour,conponent.minute,conponent.second];
    
    ALSDKUser *user = [ALSDKUser new];
    user.name = @"CYC666";
    user.gender = ALSDKGenderMale;
    
    
    [AnalySDK trackEvent:@"cycEventName" eventParams:@{@"date":dateStr}];
    [AnalySDK trackEvent:@"cycEventName" eventParams:@{@"date":@"2018"}];
    [AnalySDK identifyUser:@"13705038428" userEntity:user];
}




- (IBAction)nextAction:(UIButton *)sender {
    
    SecondViewController *ctrl = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    
    
}




@end
