//
//  DZTKeyValueView.h
//
//  Created by jason zhou on 8/10/15.
//  Copyright (c) 2015 Dinstone Co.Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DZTKeyValueView : UIView

@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;

@property (nonatomic, strong) UIColor *valueColor;

@end
