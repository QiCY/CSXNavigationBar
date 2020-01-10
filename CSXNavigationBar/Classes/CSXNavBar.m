//
//  CSXNavBar.m
//  CSXNavBar
//
//  Created by YH_IOS on 2020/1/10.
//  Copyright © 2020 YH_IOS. All rights reserved.
//

#import "CSXNavBar.h"

@implementation CSXNavBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

-(UIImageView *)bgView
{
    if (!_bgView) {
        _bgView = [[UIImageView alloc] init];
        [self addSubview:_bgView];
        [_bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top);
            make.left.equalTo(self.mas_left);
            make.right.equalTo(self.mas_right);
            make.bottom.equalTo(self.mas_bottom);
        }];
        
        [self insertSubview:_bgView atIndex:0];
    }
    return _bgView;
}
-(UIButton *)leftBtn
{
    if (!_leftBtn) {
        _leftBtn = [UIButton new];
        [self addSubview:_leftBtn];
        [_leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.mas_left);
            make.bottom.equalTo(self.mas_bottom);
            make.height.mas_equalTo(44);
            make.width.mas_equalTo(80);
        }];
        [_leftBtn addTarget:self action:@selector(leftBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _leftBtn;
}

-(void)leftBtnClick:(UIButton *)sender
{
    if (_leftBtnClick) {
        _leftBtnClick();
    }
}
-(UIButton *)rightBtn
{
    if (!_rightBtn) {
        _rightBtn = [UIButton new];
        [self addSubview:_rightBtn];
        [_rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                   make.right.equalTo(self.mas_right);
                   make.bottom.equalTo(self.mas_bottom);
                   make.height.mas_equalTo(44);
                   make.width.mas_equalTo(80);
               }];
        [_rightBtn addTarget:self action:@selector(rightBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _rightBtn;
}

-(void)rightBtnClick:(UIButton *)sender
{
    if (_rightBtnClick) {
        _rightBtnClick();
    }
}
-(UILabel *)titleLab
{
    if (!_titleLab) {
        _titleLab = [UILabel new];
        [self addSubview:_titleLab];
        [_titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.leftBtn.mas_right).offset(5);
            make.right.equalTo(self.rightBtn.mas_left).offset(-5);
            make.bottom.equalTo(self.mas_bottom);
            make.height.mas_equalTo(44);
        }];
        _titleLab.textAlignment = 1;
        _titleLab.font = [UIFont boldSystemFontOfSize:18];
//        _titleLab.font = [UIFont fontWithName:@"PingFangSC" size: 18];
        _titleLab.textColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0];
    }
    return _titleLab;
}


#pragma mark CLASS METHOD
-(void)setTitle:(NSString *)title  rightTitle:(NSString *)right
{
    [self setTitle:title];
    [self.rightBtn setTitle:right forState:UIControlStateNormal];
}
-(void)setTitle:(NSString *)title
{
    self.titleLab.text = title;
}
-(void)setTitle:(NSString *)title  leftBtnClick:(NavBtnBlock)leftBack
{
    [self setTitle:title];
    self.leftBtnClick = leftBack;
}
-(void)setTitle:(NSString *)title rightBtnImgName:(NSString *)rightName rightBtnClick:(NavBtnBlock)rightBack
{
    [self setTitle:title];
    [self.rightBtn setImage:[UIImage imageNamed:rightName] forState:UIControlStateNormal];
    self.rightBtnClick = rightBack;
}

@end
