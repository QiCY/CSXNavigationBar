//
//  CSXNavBar.h
//  CSXNavBar
//
//  Created by YH_IOS on 2020/1/10.
//  Copyright © 2020 YH_IOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
NS_ASSUME_NONNULL_BEGIN

typedef void(^NavBtnBlock)();
@interface CSXNavBar : UIView
@property(nonatomic,strong)UIButton *leftBtn;
@property(nonatomic,strong)UILabel *titleLab;
@property(nonatomic,strong)UIButton *rightBtn;
@property(nonatomic,strong)UIImageView *bgView;
@property(nonatomic,strong)NavBtnBlock leftBtnClick;
@property(nonatomic,strong)NavBtnBlock rightBtnClick;

-(void)setTitle:(NSString *)title  rightTitle:(NSString *)right;
-(void)setTitle:(NSString *)title;
-(void)setTitle:(NSString *)title  leftBtnClick:(NavBtnBlock)leftBack;
-(void)setTitle:(NSString *)title rightBtnImgName:(NSString *)rightName rightBtnClick:(NavBtnBlock)rightBack;
@end

NS_ASSUME_NONNULL_END
