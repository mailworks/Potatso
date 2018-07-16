//
//  MainViewController.m
//  Potatso
//
//  Created by zeng on 2018/7/15.
//  Copyright © 2018年 TouchingApp. All rights reserved.
//

#import "MainViewController.h"
#import "Potatso-Swift.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addSSAction:(UIButton *)sender {
    [ProxyHelper addSSProxyWithName:@"mzengSS" host:@"10.8.3.4" port:8443 encryption:@"rc4-md5" password:@"passwor" isOTA:NO];
}

- (IBAction)connectAction:(UIButton *)sender {
    [ProxyHelper addSSRProxyWithName:@"mzengSSR" host:@"10.8.3.4" port:8553 encryption:@"table" password:@"123456" ssrProtocol:@"origin" ssrObfs:@"plain" ssrObfsParam:@""];
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
