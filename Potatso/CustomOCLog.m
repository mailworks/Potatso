//
//  CustomeLog.m
//  Potatso
//
//  Created by zeng on 2018/7/15.
//  Copyright © 2018年 TouchingApp. All rights reserved.
//

#import "CustomOCLog.h"
#import "Potatso-Swift.h"
#import <MBProgressHUD/MBProgressHUD.h>

@implementation CustomOCLog
- (void)log {
    [[[CustomSwiftLog alloc] init] log];
}
@end
