//
//  MineViewController.m
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#import "MineViewController.h"
#import "SecurityViewController.h"
#import "PushSettingViewController.h"
#import "DeviceConfigViewController.h"
#import "AuthorityPeriodViewController.h"
#import "VersionUpdateViewController.h"
#import "FeatureViewController.h"
#import "FeedBackViewContrller.h"


@interface MineViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)UITableView       *tableView;

@property (nonatomic, strong)NSArray           *cellTitles;

@end

@implementation MineViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.tableFooterView = [[UIView alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorInset = UIEdgeInsetsZero;
    self.tableView.estimatedRowHeight = 68.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    _cellTitles = @[@"安全设置",@"信息推送",@"设备配置",@"权限时间段",@"版本更新",@"功能介绍",@"反馈"];
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerView = [[UIView alloc]init];
    headerView.backgroundColor = [UIColor whiteColor];
    return headerView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"MineTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    [cell setNeedsDisplay];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = _cellTitles[indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            SecurityViewController *securityVC = [[SecurityViewController alloc]init];
            securityVC.title = _cellTitles[indexPath.row];
            [securityVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:securityVC animated:YES];
        }break;
        case 1:{
            PushSettingViewController *pushVC = [[PushSettingViewController alloc]init];
            pushVC.title = _cellTitles[indexPath.row];
            [pushVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:pushVC animated:YES];
        }break;
        case 2:{
            DeviceConfigViewController *deviceConfigVC = [[DeviceConfigViewController alloc]init];
            deviceConfigVC.title = _cellTitles[indexPath.row];
            [deviceConfigVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:deviceConfigVC animated:YES];
        }break;
        case 3:{
            AuthorityPeriodViewController *authPeriodVC = [[AuthorityPeriodViewController alloc]init];
            authPeriodVC.title = _cellTitles[indexPath.row];
            [authPeriodVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:authPeriodVC animated:YES];
        }break;
        case 4:{
            VersionUpdateViewController *versionVC = [[VersionUpdateViewController alloc]init];
            versionVC.title = _cellTitles[indexPath.row];
            [versionVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:versionVC animated:YES];
        }break;
        case 5:{
            FeatureViewController *featureVC = [[FeatureViewController alloc]init];
            featureVC.title = _cellTitles[indexPath.row];
            [featureVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:featureVC animated:YES];
        }break;
        case 6:{
            FeedBackViewContrller *feedVC = [[FeedBackViewContrller alloc]init];
            feedVC.title = _cellTitles[indexPath.row];
            [feedVC setHidesBottomBarWhenPushed:YES];
            [self.navigationController pushViewController:feedVC animated:YES];
        }break;
        default:
            break;
    }
}


@end
