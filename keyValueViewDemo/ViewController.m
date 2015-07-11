//
//  ViewController.m
//  keyValueViewDemo
//
//  Created by jason zhou on 7/11/15.
//  Copyright (c) 2015 Dinstone Co.Ltd. All rights reserved.
//

#import "ViewController.h"
#import "DZTKeyValueView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DZTKeyValueView *tag1;

@property (weak, nonatomic) IBOutlet DZTKeyValueView *tag2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //tag1:取默认值
    
    //tag2:
    self.tag2.key = @"总课时";
    self.tag2.value = [NSString stringWithFormat:@"10课时"];
    self.tag2.valueColor = [UIColor colorWithRed:0.843 green:0.717 blue:0.474 alpha:1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
