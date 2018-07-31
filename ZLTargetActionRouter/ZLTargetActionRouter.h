//
//  ZLTargetAction.h
//  YunTi-Weibao
//
//  Created by 王强 on 2018/7/31.
//  Copyright © 2018年 浙江再灵科技股份有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZLTargetActionRouter : NSObject

+ (ZLTargetActionRouter *_Nullable)shareInstsance;

//MARK: - push到维保模块
- (void)pushToWeiBaoActionWithOrderNo:(NSString *_Nullable)orderNo orderStatus:(NSUInteger)orderStatus verifyUserId:(NSInteger)verifyUserId taskId:(NSString *_Nullable )taskId canModify:(BOOL)canModify from:(UIViewController * _Nullable )controller;

@end
