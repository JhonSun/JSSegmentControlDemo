//
//  ViewController.m
//  JSSegmentControlDemo
//
//  Created by ShengWang Gao on 2017/6/7.
//  Copyright © 2017年 ShengWang Gao. All rights reserved.
//

#import "ViewController.h"
#import "JSSegmentControl.h"

@interface ViewController ()

@property (nonatomic, strong) JSSegmentControl *segmentControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.segmentControl];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - get
- (JSSegmentControl *)segmentControl {
    if (!_segmentControl) {
        _segmentControl = [[JSSegmentControl alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 50)];
        NSArray *titleArray = @[@"周一", @"周二", @"周三", @"周四", @"周五", @"周六", @"周日", @"周六", @"周五", @"周四", @"周三", @"周二", @"周一"];
        _segmentControl.config.buttonWidth = 80;//[UIScreen mainScreen].bounds.size.width / titleArray.count;
        _segmentControl.config.isAutoAdaptWidth = YES;
        _segmentControl.config.buttonSpace = 20;
        _segmentControl.config.buttonHeight = 30;
        _segmentControl.config.buttonCorner = 5;
        _segmentControl.titleArray = titleArray;
        _segmentControl.selectIndex = 3;
    }
    return _segmentControl;
}


@end
