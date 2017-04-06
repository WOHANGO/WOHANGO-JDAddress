//
//  FcsAddressPickerView.h
//  FcsMall
//
//  Created by 吴梓杭 on 2017/4/1.
//  Copyright © 2017年 Guangzhou Xianyun Information Technology Co., Ltd. All rights reserved.
//


#import <UIKit/UIKit.h>


typedef void(^JDPickerShowOrHidden)(NSString *address, NSString * addressId);

@interface FcsAddressPickerView : UIView

//block回传
@property (nonatomic, copy) JDPickerShowOrHidden completion;

- (void)showAddress;

-(void)showWithProvinceName:(NSString *)provinceName;

+ (NSArray *)getLocalAreaArray;

@end
