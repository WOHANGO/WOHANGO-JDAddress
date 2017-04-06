//
//  FcsAddressButton.h
//  FcsMall
//
//  Created by 吴梓杭 on 2017/4/1.
//  Copyright © 2017年 Guangzhou Xianyun Information Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FcsAddressButton : UIButton

@property (nonatomic, assign) NSInteger  tagFcs;
@property (nonatomic, copy)   NSString * addressName;

@property (nonatomic, assign) CGFloat    width;
@property (nonatomic, assign) CGFloat    left;
@end

/*
        外部不掉用此文件
 */
