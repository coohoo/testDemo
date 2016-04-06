//
//  KeySettingViewController.m
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#import "KeySettingViewController.h"
#import "ElectronicKeyViewController.h"
#import "FingerPrintViewController.h"
#import "CombinaSettingViewController.h"

@interface KeySettingViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong)UITableView       *tableView;

@end

@implementation KeySettingViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"保险箱1";
    [self.view addSubview:self.tableView];
    
    [self initThreeButton];

}


- (void)initThreeButton{
    UIButton  *electronicKeyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    electronicKeyBtn.frame = CGRectMake(0, 25, UI_WIDTH, 50);
    [self.view addSubview:electronicKeyBtn];
    electronicKeyBtn.backgroundColor = [UIColor whiteColor];
    [electronicKeyBtn setTitle:@"添加电子钥匙" forState:UIControlStateNormal];
    [electronicKeyBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [electronicKeyBtn addTarget:self action:@selector(electronicKeyBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton  *fingerPrintBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    fingerPrintBtn.frame = CGRectMake(0, 75, UI_WIDTH, 50);
    [self.view addSubview:fingerPrintBtn];
    fingerPrintBtn.backgroundColor = [UIColor whiteColor];
    [fingerPrintBtn setTitle:@"添加指纹" forState:UIControlStateNormal];
    [fingerPrintBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [fingerPrintBtn addTarget:self action:@selector(fingerPrintBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton  *combinaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    combinaBtn.frame = CGRectMake(0, 125, UI_WIDTH, 50);
    [self.view addSubview:combinaBtn];
    combinaBtn.backgroundColor = [UIColor whiteColor];
    [combinaBtn setTitle:@"组合开锁设置" forState:UIControlStateNormal];
    [combinaBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [combinaBtn addTarget:self action:@selector(combinaBtnClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)electronicKeyBtnClicked{
    ElectronicKeyViewController *electronicKeyVC = [[ElectronicKeyViewController alloc]init];
    [electronicKeyVC setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:electronicKeyVC animated:YES];
}

- (void)fingerPrintBtnClicked{
    FingerPrintViewController *fingerPrintVC = [[FingerPrintViewController alloc]init];
    [fingerPrintVC setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:fingerPrintVC animated:YES];
}

- (void)combinaBtnClicked{
    CombinaSettingViewController *combinaVC = [[CombinaSettingViewController alloc]init];
    [combinaVC setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:combinaVC animated:YES];
}


- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 200, UI_WIDTH, UI_HEIGHT- 200) style:UITableViewStylePlain];
        _tableView.tableFooterView = [[UIView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorInset = UIEdgeInsetsZero;
        _tableView.estimatedRowHeight = 68.0;
        _tableView.rowHeight = UITableViewAutomaticDimension;
    }
    return _tableView;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"KeyTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    [cell setNeedsDisplay];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    return cell;
}

@end
