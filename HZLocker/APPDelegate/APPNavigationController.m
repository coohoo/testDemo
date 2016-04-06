//
//  APPNavigationController.m
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#import "APPNavigationController.h"

@interface APPNavigationController ()

@end

@implementation APPNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];
    
    //导航栏颜色
    [[UINavigationBar appearance] setBarTintColor:DefaultTintColor];
    [[UINavigationBar appearance] setTranslucent:NO];
    
    //返回键颜色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:
                                                               [UIColor whiteColor],
                                                           NSFontAttributeName:[UIFont systemFontOfSize:18]
                                                           }];
    
    
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:
                                                               [UIColor grayColor],
                                                           NSFontAttributeName:[UIFont systemFontOfSize:16]
                                                           }
                                                forState:UIControlStateDisabled];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:
                                                               [UIColor whiteColor],
                                                           NSFontAttributeName:[UIFont systemFontOfSize:16]
                                                           }
                                                forState:UIControlStateNormal];
    
//    //去除底部黑线
//    [UINavigationBar appearance].shadowImage = [UIImage new];
//    [[UINavigationBar appearance] setBackgroundImage:[DVUtil imageWithColor:[UIColor clearColor] AndSize:CGSizeMake(IPHONE_WIDTH, 1)] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
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
