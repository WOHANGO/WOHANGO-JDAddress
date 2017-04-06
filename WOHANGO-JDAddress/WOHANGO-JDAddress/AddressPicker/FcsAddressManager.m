//
//  FcsAddressManager.m
//  FcsMall
//
//  Created by 吴梓杭 on 2017/4/1.
//  Copyright © 2017年 Guangzhou Xianyun Information Technology Co., Ltd. All rights reserved.
//

#import "FcsAddressManager.h"

@interface FcsAddressManager ()

@end

@implementation FcsAddressManager

+ (instancetype)shareInstance {
    static FcsAddressManager *_addressManager = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _addressManager = [[self alloc] init];
    });
    return _addressManager;
}

+ (NSArray *)getLocalAreaArray {
    NSString* path = [[NSBundle mainBundle] pathForResource:@"address" ofType:@"json"];
    if(path.length <= 0) {
        return nil;
    }
    
    NSData* data = [NSData dataWithContentsOfFile:path];
    id JsonObject =
    [NSJSONSerialization JSONObjectWithData:data
                                    options:NSJSONReadingAllowFragments
                                      error:nil];
    
    NSArray * arr = [[NSArray arrayWithObject:JsonObject] objectAtIndex:0];
    NSMutableArray * _allCitiesArr = [[NSMutableArray alloc] initWithArray:arr];
    
    return _allCitiesArr;
}

@end
