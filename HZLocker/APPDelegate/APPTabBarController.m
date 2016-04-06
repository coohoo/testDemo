//
//  APPTabBarController.m
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#import "APPTabBarController.h"
#import "HomeViewController.h"
#import "AuthorizeViewController.h"
#import "RecordViewController.h"
#import "MineViewController.h"
#import "APPNavigationController.h"

@interface APPTabBarController ()

@end

@implementation APPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeViewController *homeViewController = [[HomeViewController alloc]init];
    homeViewController.title = @"Location";
    APPNavigationController *homeNav = [[APPNavigationController alloc]initWithRootViewController:homeViewController];
    
    AuthorizeViewController *authorizeViewController = [[AuthorizeViewController alloc]init];
    authorizeViewController.title = @"Contacts";
    APPNavigationController *authNav = [[APPNavigationController alloc]initWithRootViewController:authorizeViewController];
    
    RecordViewController *recordViewController = [[RecordViewController alloc]init];
    recordViewController.title = @"Messages";
    APPNavigationController *recordNav = [[APPNavigationController alloc]initWithRootViewController:recordViewController];
    
    MineViewController *mineViewController = [[MineViewController alloc]init];
    mineViewController.title = @"我的";
    APPNavigationController *mineNav = [[APPNavigationController alloc]initWithRootViewController:mineViewController];
    
    self.viewControllers = @[homeNav,authNav,recordNav,mineNav];
    
    self.tabBar.tintColor = DefaultTintColor;
    self.tabBar.backgroundColor = [UIColor whiteColor];
    
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem *tabBarItem, NSUInteger idx, BOOL *stop) {
        
        switch (idx) {
            case 0:
            {
                [tabBarItem setImage:[[UIImage imageNamed:@"tab_loc"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                [tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab_loc_select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                break;
            }
            case 1:
            {
                [tabBarItem setImage:[[UIImage imageNamed:@"tab_contact"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                [tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab_contact_select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                break;
            }
            case 2:
            {
                tabBarItem.tag = 2;
                [tabBarItem setImage:[[UIImage imageNamed:@"tab_message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                [tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab_message_select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                break;
            }
            case 3:
            {
                [tabBarItem setImage:[[UIImage imageNamed:@"tab_set"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                [tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab_set_select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
                break;
            }
            default:
                break;
        }
        
    }];

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
