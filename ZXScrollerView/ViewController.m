//
//  ViewController.m
//  ZXScrollerView
//
//  Created by zhaoxu on 16/4/12.
//  Copyright © 2016年 ZX. All rights reserved.
//

#import "ViewController.h"
#import "ZXScrollView/ZXScroll.h"

@interface ViewController () <ZXScrollViewDelegate>

@property (weak,nonatomic) UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    ZXScrollView *scrollView = [[ZXScrollView alloc] initWithFrame:CGRectMake(0, 64, ZXSCREEN_WIDTH, 350)];
    NSArray *imageArray = @[@"设计师图片",@"设计师图片",@"设计师图片",@"设计师图片",@"设计师图片",@"设计师图片"];
    scrollView.imageArray = imageArray;
    scrollView.pageDelegate = self;
    scrollView.isAutomatic = NO;//如果需要在scrollView上添加上下拉，就需要全部设置为NO
    scrollView.isCycle = NO;
    [self.view addSubview:scrollView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark --ZXScrollViewDelegate
- (void)pageControlReset:(NSInteger)aCount {
    self.pageControl.currentPage = aCount;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
