//
//  ViewController.m
//  WOHANGO-JDAddress
//
//  Created by 吴梓杭 on 2017/4/6.
//  Copyright © 2017年 吴梓杭. All rights reserved.
//

#import "ViewController.h"
#import "FcsAddressPickerView.h"

@interface ViewController ()

@property(nonatomic,strong)UIView * showView;
@property(nonatomic,strong)FcsAddressPickerView * threePicker;
@property (nonatomic,strong) UILabel *addressLabel;
@property(nonatomic,strong)UIScrollView *contactScroll;
@property(nonatomic,strong)UIButton *but_accessory;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.but_accessory = [UIButton buttonWithType:UIButtonTypeCustom];
    _but_accessory.backgroundColor = Ce7e9eb;
    _but_accessory.frame = CGRectMake(10, 30, ScreenWidth - 30, 44);
    [_but_accessory addTarget:self action:@selector(btnEvent) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_but_accessory];
    
    
    _addressLabel = [[UILabel alloc] init];
    _addressLabel.font = [UIFont systemFontOfSize:13];
    _addressLabel.textColor = C333333;
    _addressLabel.frame = CGRectMake(10, (44-13)/2, ScreenWidth, 13);
    [_but_accessory addSubview:_addressLabel];
    
    
    
}

- (void)btnEvent
{
    [self.threePicker showWithProvinceName:@"广东省"];    //定位注册所在省份
    [self.threePicker showAddress];
}
-(FcsAddressPickerView *)threePicker{
    if (!_threePicker) {
        _threePicker = [[FcsAddressPickerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        __weak typeof(self)weakSelf = self;
        
        self.threePicker = [[FcsAddressPickerView alloc] init];
        _threePicker.completion = ^(NSString *address, NSString * addressId){
            NSLog(@"_threePicker\n, address=%@, addressId=%@\n\n", address, addressId);
            __strong typeof(weakSelf) self = weakSelf;
            self.addressLabel.text = [NSString stringWithFormat:@"%@", address];
            
        };
        [self.view addSubview:_threePicker];
    }
    return _threePicker;
}


-(void)tapGesendEdit{
    [_threePicker removeFromSuperview];
    
}

@end
