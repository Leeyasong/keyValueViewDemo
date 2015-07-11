//
//  DZTKeyValueView.m
//
//  Created by jason zhou on 8/10/15.
//  Copyright (c) 2015 Dinstone Co.Ltd. All rights reserved.
//

#import "DZTKeyValueView.h"
#import <Masonry/Masonry.h>

@interface DZTKeyValueView()

@property (nonatomic, strong) UIView *keyView;
@property (nonatomic, strong) UIView *valueView;

@property (nonatomic, strong) UILabel *keyLabel;
@property (nonatomic, strong) UILabel *valueLabel;

@end

@implementation DZTKeyValueView
{
    UIEdgeInsets _keyEdges;
    UIEdgeInsets _valueEdges;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}

- (void)setup
{
    _keyEdges   = UIEdgeInsetsMake(3, 5, 3, 5);
    _valueEdges = UIEdgeInsetsMake(3, 5, 3, 10);
    _valueColor = [UIColor colorWithRed:0.38 green:0.764 blue:0.552 alpha:1];
    
    
    self.layer.cornerRadius  = 3;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth   = 1;
    self.layer.borderColor   = self.valueColor.CGColor;
    
    //创建子视图
    /////////////////////////////////////////////////////////////////
    _keyView = [UIView new];
    [self addSubview:_keyView];
    
    _valueView = [UIView new];
    [self addSubview:_valueView];
    
    
    _keyLabel = [UILabel new];
    [_keyView addSubview:_keyLabel];
    
    _valueLabel = [UILabel new];
    [_valueView addSubview:_valueLabel];
    /////////////////////////////////////////////////////////////////
    
    
    //初始化子视图
    /////////////////////////////////////////////////////////////////
    _keyView.backgroundColor    = self.valueColor;
    _valueView.backgroundColor  = [UIColor whiteColor];
    _keyLabel.backgroundColor   = [UIColor clearColor];
    _valueLabel.backgroundColor = [UIColor clearColor];
    
    
    UIFont *font = [UIFont systemFontOfSize:14];
    
    _keyLabel.text = @"耗时";
    _keyLabel.font = font;
    _keyLabel.textAlignment = NSTextAlignmentCenter;
    _keyLabel.textColor = [UIColor whiteColor];
    
    _valueLabel.text = @"60分钟";
    _valueLabel.textAlignment = NSTextAlignmentCenter;
    _valueLabel.textColor = self.valueColor;
    _valueLabel.font = font;
    _valueLabel.textColor = self.valueColor;
    /////////////////////////////////////////////////////////////////
    
    
    //创建约束
    /////////////////////////////////////////////////////////////////
    [_keyLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [_keyLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    
    [_keyLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [_keyLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
 
    
    [_valueLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [_valueLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    
    [_valueLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [_valueLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    
    
    [self removeConstraints:self.constraints];
    [self.keyView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.equalTo(self).offset(0);
    }];
    
    [self.valueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.top.bottom.equalTo(self).offset(0);
        make.left.equalTo(self.keyView.mas_right).offset(0);
    }];
    
    [_keyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.keyView).with.insets(_keyEdges);
    }];
    
    [_valueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.valueView).with.insets(_valueEdges);
    }];
    
    [self setNeedsUpdateConstraints];
    /////////////////////////////////////////////////////////////////
}

- (void)setKey:(NSString *)key
{
    _key = [key copy];
    _keyLabel.text = _key;
}

- (void)setValue:(NSString *)value
{
    _value = [value copy];
    _valueLabel.text = _value;
}

- (void)setValueColor:(UIColor*)color
{
    _valueColor = color;
    self.layer.borderColor   = _valueColor.CGColor;
    _valueLabel.textColor    = _valueColor;
    _keyView.backgroundColor = _valueColor;
    [self setNeedsDisplay];
}

#pragma mark - AutoLayout
//intrinsicContentSize
//- (CGSize)intrinsicContentSize
//{
//    CGSize kSize = [_keyLabel systemLayoutSizeFittingSize: UILayoutFittingCompressedSize];
//    CGSize vSize = [_valueLabel systemLayoutSizeFittingSize: UILayoutFittingCompressedSize];
//    
//    
//    CGFloat width =  kSize.width + vSize.width + 12;
//    CGFloat height = kSize.height + 20;
//    return CGSizeMake(width, height);
//}
//
//- (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis
//{
//    return UILayoutPriorityRequired;
//}
//
//- (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis
//{
//    return UILayoutPriorityRequired;
//}

@end
