//
//  ViewController.m
//  ASAdverRollView
//
//  Created by haohao on 16/11/4.
//  Copyright © 2016年 haohao. All rights reserved.
//

#import "ViewController.h"
#import "ASAdverRollView.h"
#import "SubViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet ASAdverRollView *asView2;
@property (nonatomic, strong) ASAdverRollView *asView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.asView = [[ASAdverRollView alloc]initWithFrame:CGRectMake(20, 100, 150, 20)];
    self.asView.adverTitles = @[@"最上层是使用者，可以是Controller", @"学习iOS是很不错的", @"向广大开发者致敬", @"加油吧💪各位"];
    self.asView.asBGColor = [UIColor orangeColor];
    self.asView.fontColor = [UIColor redColor];
    [self.view addSubview:self.asView];
    __weak typeof (self)weakSelf = self;
    self.asView.clickBlock = ^(NSInteger index) {
        SubViewController *sub = [[SubViewController alloc]init];
        sub.title = weakSelf.asView.adverTitles[index];
        [weakSelf.navigationController pushViewController:sub animated:YES];
    };
    [self.asView startScroll];
    
    
    self.asView2.adverTitles  = @[@"最上层是使用者，可以是Controller", @"学习iOS是很不错的", @"向广大开发者致敬", @"加油吧💪各位"];
    self.asView2.asBGColor = [UIColor lightGrayColor];
    self.asView2.fontColor = [UIColor blueColor];
    self.asView2.alignment = NSTextAlignmentCenter;
    self.asView2.font = [UIFont systemFontOfSize:20];
    self.asView2.clickBlock = ^(NSInteger index) {
        SubViewController *sub = [[SubViewController alloc]init];
        sub.title = weakSelf.asView.adverTitles[index];
        [weakSelf.navigationController pushViewController:sub animated:YES];
    };
    [self.asView2 startScroll];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
