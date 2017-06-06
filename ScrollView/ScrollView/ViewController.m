//
//  ViewController.m
//  ScrollView
//
//  Created by zhangzhenglong on 2017/6/5.
//  Copyright © 2017年 zhangzhenglong. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewController.h"


#define margn 10

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(NSLayoutConstraint) NSArray *margnArrs;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewWidth;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

/**
 *  添加contentView 确定scrollView的contentSize大小 
    scrollView需要在普通约束上再加全约束
 */

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
        解决scrollView origin 在 y 轴上 64 个像素的下移
     */
    self.automaticallyAdjustsScrollViewInsets = NO;
    for (NSLayoutConstraint * constraint  in self.margnArrs) {
        constraint.constant = margn;
    }
    self.imageViewWidth.constant = (self.contentView.bounds.size.width - (self.margnArrs.count + 1) * margn)/4.0;
}

- (IBAction)scrollView:(id)sender {
    
    ScrollViewController * scrollVC = [[ScrollViewController alloc] init];
    [self.navigationController pushViewController:scrollVC animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
