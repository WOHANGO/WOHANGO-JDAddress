//
//  FcsAddressButton.m
//  FcsMall
//
//  Created by 吴梓杭 on 2017/4/1.
//  Copyright © 2017年 Guangzhou Xianyun Information Technology Co., Ltd. All rights reserved.
//


#import "FcsAddressButton.h"

@implementation FcsAddressButton


- (CGFloat)width {
    return _width;
}

- (CGFloat)left {
    return _left;
}


- (void)setAddressName:(NSString *)addressName {
    _addressName = addressName;
    [self setTitle:addressName forState:UIControlStateNormal];
    
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    [self setTitleColor:C999999 forState:UIControlStateNormal];
    
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.backgroundColor = [UIColor clearColor];
    
    CGRect rect = self.frame;
    _left = rect.origin.x;
    
    [self sizeToFit];
    _width = self.bounds.size.width;
    self.frame = CGRectMake(rect.origin.x, rect.origin.y, _width, rect.size.height);
    
}

@end
