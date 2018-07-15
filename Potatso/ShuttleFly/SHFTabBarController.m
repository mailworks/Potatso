//
//  SHFTabBarController.m
//  Potatso
//
//  Created by zeng on 2018/7/15.
//  Copyright © 2018年 TouchingApp. All rights reserved.
//

#import "SHFTabBarController.h"
#import "Modules/MainViewController.h"
#import "Modules/SettingViewController.h"

@interface SHFTabBarController ()

@end

@implementation SHFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addChildViewControllers{
    MainViewController *main = [MainViewController new];
    UITabBarItem *tabItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[[UIImage imageNamed:@"Home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  selectedImage:[[UIImage imageNamed:@"Home"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    main.tabBarItem = tabItem;
    
    SettingViewController *setting = [SettingViewController new];
    tabItem = [[UITabBarItem alloc] initWithTitle:@"设置" image:[UIImage imageNamed:@"Config"] selectedImage:[UIImage imageNamed:@"Config"]];
    setting.tabBarItem = tabItem;
    
    UINavigationController *mainNav = [[UINavigationController alloc] initWithRootViewController:main];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:setting];
    self.viewControllers = @[mainNav, settingNav];
    
}
@end
