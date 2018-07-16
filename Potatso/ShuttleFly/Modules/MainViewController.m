//
//  MainViewController.m
//  Potatso
//
//  Created by zeng on 2018/7/15.
//  Copyright © 2018年 TouchingApp. All rights reserved.
//

#import "MainViewController.h"
#import "Potatso-Swift.h"
@import PotatsoLibrary;

@interface MainViewController ()<HomePresenterProtocol>
@property (strong, nonatomic) HomePresenter *presenter;
@property (assign, nonatomic) VPNStatus status;
@end

@implementation MainViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _presenter = [[HomePresenter alloc] init];
        [_presenter bindToVC:self];
        _presenter.delegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Post an empty message so we could attach to packet tunnel process
    [[Manager sharedManager] postMessage];
    [self handleRefreshUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addSSAction:(UIButton *)sender {
//    [ProxyHelper addSSProxyWithName:@"mzengSS" host:@"10.8.3.4" port:8443 encryption:@"rc4-md5" password:@"passwor" isOTA:NO];
}

- (IBAction)connectAction:(UIButton *)sender {
//    [ProxyHelper addSSRProxyWithName:@"mzengSSR" host:@"10.8.3.4" port:8553 encryption:@"table" password:@"123456" ssrProtocol:@"origin" ssrObfs:@"plain" ssrObfsParam:@""];
    if (self.status == VPNStatusOn) {
        self.status = VPNStatusDisconnecting;
    } else {
        self.status = VPNStatusConnecting;
    }
    [self.presenter switchVPN];
}

#pragma mark - HomePresenterProtocol
- (void)handleRefreshUI
{
    if (self.presenter.group.isDefault) {
        self.status = [Manager sharedManager].vpnStatus;
    } else {
        self.status = VPNStatusOn;
    }
    
    NSString *title = @"";
    switch (self.status) {
        case VPNStatusOn:
            {
                title = @"已连接";
                break;
            }
        case VPNStatusOff:
        {
            title = @"已断开连接";
            break;
        }
        case VPNStatusConnecting:
        {
            title = @"连接中...";
            break;
        }
        case VPNStatusDisconnecting:
        {
            title = @"断开连接...";
            break;
        }
    }
    //全局/智能模式 self.presenter.group.defaultToProxy;
    NSLog(@"😜---%@",title);
}

#pragma mark - property set get

@end
