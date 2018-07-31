//
//  ZLTargetAction.m
//  YunTi-Weibao
//
//  Created by 王强 on 2018/7/31.
//  Copyright © 2018年 浙江再灵科技股份有限公司. All rights reserved.
//

#import "ZLTargetActionRouter.h"

@implementation ZLTargetActionRouter

static ZLTargetActionRouter *toolClassShare = nil;
+ (ZLTargetActionRouter *_Nullable)shareInstsance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!toolClassShare) {
            toolClassShare =  [[ZLTargetActionRouter alloc] init];
        }
    });
    return toolClassShare;
}

//MARK: - push到维保模块
- (void)pushToWeiBaoActionWithOrderNo:(NSString *_Nullable)orderNo orderStatus:(NSUInteger)orderStatus verifyUserId:(NSInteger)verifyUserId taskId:(NSString *_Nullable )taskId canModify:(BOOL)canModify from:(UIViewController * _Nullable )controller {
    Class class = NSClassFromString(@"WBTargetAction");
    SEL selector = NSSelectorFromString(@"pushToWeiBaoActionWithOrderNo:orderStatus:verifyUserId:taskId:canModify:from:");
    if ([class respondsToSelector:selector]) {
        IMP imp = [class methodForSelector:selector];
        void (*func)(id, SEL,NSString *,NSUInteger,NSInteger,NSString *,BOOL,UIViewController *) = (void *)imp;
        func(class,selector,orderNo,orderStatus,verifyUserId,taskId,canModify,controller);
    }
}

@end
