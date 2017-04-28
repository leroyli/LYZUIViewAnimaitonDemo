//
//  ViewController.m
//  LYZUIViewAnimaitonDemo
//
//  Created by artios on 2017/4/28.
//  Copyright © 2017年 artios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *contentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self lyz_configViews];
}

- (void)lyz_configViews{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.contentView = [[UIView alloc] init];
    self.contentView.frame = CGRectMake(100, 200, 100, 100);
    self.contentView.backgroundColor = [UIColor redColor];
    self.contentView.center = self.view.center;
    [self.view addSubview:self.contentView];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    [self lyz_basicAnimation];
    
//    [self lyz_optionsAnimation];
    
//    [self lyz_springAnimation];
    
    [self lyz_transformAnimation];
    
}

- (void)lyz_basicAnimation{
    /*
    [UIView animateWithDuration:1 animations:^{
        self.contentView.frame = CGRectMake(250, 200, 100, 100);
    }];
     */
    
    [UIView animateWithDuration:1 animations:^{
        self.contentView.frame = CGRectMake(250, 200, 100, 100);
    } completion:^(BOOL finished) {
        self.contentView.backgroundColor = [UIColor purpleColor];
    }];
    
}

- (void)lyz_optionsAnimation{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.contentView.frame = CGRectMake(100, 200, 200, 200);
        self.contentView.center = self.view.center;
    } completion:^(BOOL finished) {
        self.contentView.backgroundColor = [UIColor purpleColor];
    }];
}

- (void)lyz_springAnimation{
    /**
     usingSpringWithDamping   :   0.0 ~ 1.0 阻尼比例，数值越小「弹簧」的振动效果越明显
     initialSpringVelocity    :   初始的速度，数值越大一开始移动越快
     **/
    [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:.5 initialSpringVelocity:.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.contentView.frame = CGRectMake(100, 200, 200, 200);
        self.contentView.center = self.view.center;
    } completion:^(BOOL finished) {
        self.contentView.backgroundColor = [UIColor purpleColor];
    }];
}

- (void)lyz_transformAnimation{
    
    /**缩放动画**/
    [UIView animateWithDuration:1 animations:^{
        
        self.contentView.transform = CGAffineTransformMakeScale(1.5, 1.5);
        
    } completion:^(BOOL finished) {
        
        //下面两行代码效果一样
//        self.contentView.transform = CGAffineTransformMakeScale(1, 1);
        self.contentView.transform = CGAffineTransformIdentity;
        
    }];
}

- (void)lyz_transformLayerAnimatin{
    
    /**layer缩放**/
    [UIView animateWithDuration:1 animations:^{
        
        self.contentView.layer.transform = CATransform3DMakeScale(1.5f, 1.5f, 1.0f);
        
    } completion:^(BOOL finished) {
        
        self.contentView.layer.transform = CATransform3DIdentity;
        
    }];
    
}

/**
 
 1.基本类型
 UIViewAnimationOptionLayoutSubviews：动画过程中保证子视图跟随运动。
 UIViewAnimationOptionAllowUserInteraction：动画过程中允许用户交互。
 UIViewAnimationOptionBeginFromCurrentState：所有视图从当前状态开始运行。
 UIViewAnimationOptionRepeat：重复运行动画。
 UIViewAnimationOptionAutoreverse ：动画运行到结束点后仍然以动画方式回到初始点。
 UIViewAnimationOptionOverrideInheritedDuration：忽略嵌套动画时间设置。
 UIViewAnimationOptionOverrideInheritedCurve：忽略嵌套动画速度设置。
 UIViewAnimationOptionAllowAnimatedContent：动画过程中重绘视图（注意仅仅适用于转场动画）。
 UIViewAnimationOptionShowHideTransitionViews：视图切换时直接隐藏旧视图、显示新视图，而不是将旧视图从父视图移除（仅仅适用于转场动画）
 UIViewAnimationOptionOverrideInheritedOptions ：不继承父动画设置或动画类型。
 
 2.动画速度控制（可从其中选择一个设置）
 UIViewAnimationOptionCurveEaseInOut：动画先缓慢，然后逐渐加速。
 UIViewAnimationOptionCurveEaseIn ：动画逐渐变慢。
 UIViewAnimationOptionCurveEaseOut：动画逐渐加速。
 UIViewAnimationOptionCurveLinear ：动画匀速执行，默认值。
 
 3.转场类型（仅适用于转场动画设置，可以从中选择一个进行设置，基本动画、关键帧动画不需要设置）
 UIViewAnimationOptionTransitionNone：没有转场动画效果。
 UIViewAnimationOptionTransitionFlipFromLeft ：从左侧翻转效果。
 UIViewAnimationOptionTransitionFlipFromRight：从右侧翻转效果。
 UIViewAnimationOptionTransitionCurlUp：向后翻页的动画过渡效果。
 UIViewAnimationOptionTransitionCurlDown ：向前翻页的动画过渡效果。
 UIViewAnimationOptionTransitionCrossDissolve：旧视图溶解消失显示下一个新视图的效果。
 UIViewAnimationOptionTransitionFlipFromTop ：从上方翻转效果。
 UIViewAnimationOptionTransitionFlipFromBottom：从底部翻转效果
 
 **/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
