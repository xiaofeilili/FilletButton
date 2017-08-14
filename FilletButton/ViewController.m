//
//  ViewController.m
//  FilletButton
//
//  Created by xiaofei on 2017/8/14.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createBtn];
}

- (void)createBtn {
    UIButton *leftTopBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftTopBtn.frame = CGRectMake(100, 100, 100, 100);
    leftTopBtn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:leftTopBtn];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.frame = CGRectMake(0, 0, 100, 100);
    shapeLayer.path = maskPath.CGPath;
    leftTopBtn.layer.mask = shapeLayer;
    
    
    UIButton *rightTopBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightTopBtn.frame = CGRectMake(220, 100, 100, 100);
    rightTopBtn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:rightTopBtn];
    
    UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *shapeLayer2 = [[CAShapeLayer alloc] init];
    shapeLayer2.frame = CGRectMake(0, 0, 100, 100);
    shapeLayer2.path = maskPath2.CGPath;
    rightTopBtn.layer.mask = shapeLayer2;
    
    
    UIButton *leftBottomBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftBottomBtn.frame = CGRectMake(100, 220, 100, 100);
    leftBottomBtn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:leftBottomBtn];
    
    UIBezierPath *maskPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *shapeLayer3 = [[CAShapeLayer alloc] init];
    shapeLayer3.frame = CGRectMake(0, 0, 100, 100);
    shapeLayer3.path = maskPath3.CGPath;
    leftBottomBtn.layer.mask = shapeLayer3;
    
    
    UIButton *rightBottomBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBottomBtn.frame = CGRectMake(220, 220, 100, 100);
    rightBottomBtn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:rightBottomBtn];
    
    UIBezierPath *maskPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *shapeLayer4 = [[CAShapeLayer alloc] init];
    shapeLayer4.frame = CGRectMake(0, 0, 100, 100);
    shapeLayer4.path = maskPath4.CGPath;
    rightBottomBtn.layer.mask = shapeLayer4;
    
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    moreBtn.frame = CGRectMake(200, 400, 100, 100);
    moreBtn.backgroundColor = [UIColor brownColor];
    [self.view addSubview:moreBtn];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerBottomRight| UIRectCornerTopLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *shapeLayer5 = [CAShapeLayer layer];
    shapeLayer5.frame = CGRectMake(0, 0, 100, 100);
    shapeLayer5.path = path.CGPath;
    moreBtn.layer.mask = shapeLayer5;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
