//
//  ViewController.m
//  0928ZJ心跳
//
//  Created by base on 15/09/19.
//  Copyright © 2015年 base. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *jump;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //添加动画
    CABasicAnimation *anm = [CABasicAnimation animation];
    //设置属性值
    anm.keyPath = @"transform.scale";
    anm.toValue = @0;
    //想要执行多次动画
    anm.repeatCount = MAXFLOAT;
//    设置动画的执行时长
    anm.duration = 0.5;
//    反转，怎么回去，怎么回来
    anm.autoreverses = YES;
//    添加动画
    [self.jump.layer addAnimation:anm forKey:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
