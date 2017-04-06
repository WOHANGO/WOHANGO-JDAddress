//
//  FcsAddressManager.h
//  FcsMall
//
//  Created by 吴梓杭 on 2017/4/1.
//  Copyright © 2017年 Guangzhou Xianyun Information Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FcsAddressManager : NSObject

+ (instancetype)shareInstance;
+ (NSArray *)getLocalAreaArray;

@property (nonatomic,strong) NSArray * getLocalAreaArray;//省字典数组

#define kAddressManager [FcsAddressManager shareInstance]

@end
