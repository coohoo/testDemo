//
//  PushSettingViewController.m
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#import "PushSettingViewController.h"
#import "AppDelegate.h"

@implementation PushSettingViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView  *backView = [[UIView alloc]init];
    [self.view addSubview:backView];
    backView.backgroundColor = [UIColor whiteColor];
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left);
        make.right.mas_equalTo(self.view.mas_right);
        make.top.mas_equalTo(self.view.mas_top).offset(30);
        make.height.mas_equalTo(50);
    }];
    
    UILabel *label = [[UILabel alloc]init];
    [backView addSubview:label];
    label.text = @"消息推送";
    [label sizeToFit];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(backView.mas_left).offset(20);
        make.width.mas_equalTo(200);
        make.centerY.mas_equalTo(backView.mas_centerY);
    }];
    
    UILabel *remindLabel = [[UILabel alloc]init];
    [self.view addSubview:remindLabel];
    remindLabel.text = @"如果关闭消息推送，将无法获取保险柜的消息";
    remindLabel.font = FitFont(14);
    [remindLabel sizeToFit];
    [remindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label.mas_left);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        make.top.mas_equalTo(backView.mas_bottom).offset(10);
    }];
    
    
    
    
    UISwitch *switchView = [[UISwitch alloc]init];
    [backView addSubview:switchView];
    [switchView addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
    [switchView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(backView.mas_right).offset(-20);
        make.centerY.mas_equalTo(backView.mas_centerY);
    }];
}

- (void)switchAction:(UISwitch *)switchView{
    if (switchView.on){
//        //注册，并关连消息
//        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
//        [center addObserver:[[UIApplication sharedApplication] delegate]
//                   selector:@selector(notificationEvent:)
//                       name:kGotToken object:nil];
//        
//        //远程推送，支持badge、sound、alert
//        [[UIApplication sharedApplication]
//         registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge |
//                                             UIRemoteNotificationTypeSound |
//                                             UIRemoteNotificationTypeAlert)];
//    }
//    else{
//        //关闭推送通知
//        [[UIApplication sharedApplication] unregisterForRemoteNotifications];
    }

}

@end
