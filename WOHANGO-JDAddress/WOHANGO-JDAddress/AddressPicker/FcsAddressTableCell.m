//
//  FcsAddressTableCell.m
//  FcsMall
//
//  Created by 吴梓杭 on 2017/4/1.
//  Copyright © 2017年 Guangzhou Xianyun Information Technology Co., Ltd. All rights reserved.
//

#import "FcsAddressTableCell.h"

@interface FcsAddressTableCell ()
{
    UILabel     * _titleLabel;
    UIImageView * _selectImgView;
    CGFloat       _imgWidth;
    CGFloat       _imgHeight;
    CGFloat       _imgTop;
}
@end

@implementation FcsAddressTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self configUI];
}

- (void)configUI {
    [self ifViewAlloc];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, self.bounds.size.width, cellHeight)];
    _titleLabel.text = @"";
    _titleLabel.font = [UIFont systemFontOfSize:12];
    _titleLabel.textColor = C999999;
    [self.contentView addSubview:_titleLabel];
    
    _imgWidth = 12;
    _imgHeight = 8;
    _imgTop = (cellHeight - _imgHeight)/2.0;
    _selectImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, _imgTop, _imgWidth, _imgHeight)];
    _selectImgView.image = [UIImage imageNamed:@"address_create_selected"];
    _selectImgView.hidden = YES;
    [self.contentView addSubview:_selectImgView];
    
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)ifViewAlloc {
    if(_titleLabel) {
        [_titleLabel removeFromSuperview];
        _titleLabel = nil;
    }
    
    if(_selectImgView) {
        [_selectImgView removeFromSuperview];
        _selectImgView = nil;
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];

}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
        [self configUI];
    }
    return self;
}

- (void)setCellTitle:(NSString *)title isSelected:(BOOL)isSelected {
    if(isSelected) {
        _titleLabel.textColor = C759A15;
        _titleLabel.text = title;
        
        CGFloat imgLeft = [_titleLabel textRectForBounds:CGRectMake(0, 0, CGFLOAT_MAX, cellHeight) limitedToNumberOfLines:1].size.width + 20 + 10;
        _selectImgView.frame = CGRectMake(imgLeft, _imgTop, _imgWidth, _imgHeight);
        _selectImgView.hidden = NO;
    }
    else {
        _titleLabel.textColor = C999999;
        _titleLabel.text = title;
        _selectImgView.hidden = YES;
    }
}

@end
