//
//  CAAnimationViewController.m
//  CoreAnimation
//
//  Created by 林文锐 on 2018/10/23.
//  Copyright © 2018年 林文锐. All rights reserved.
//

#import "CAAnimationViewController.h"

/**
 CAAnimation
 
 CALayer提供一下方法来管理动画:
 1, -(void)addAnimation:(CAAnimation *)anim forKey:(nullable NSString *)key;
 2, -(void)removeAllAnimations;
 3, -(void)removeAnimationForKey:(NSString *)key;
 4, -(nullable NSArray<NSString *>*)animationKeys;
 5, -(nullable CAAnimation *)animationForKey:(NSString *)key;
 
 CAAnimation 是动画基类,我们常用的的 CABasicAnimation和CAKeyframeAnimation 都继承与 CAPropertyAnimation 即属性动画.属性动画通过改变 layer 的可动画属性(位置,大小等)实现动画效果.CABasicAnimation 可以看做有两个关键帧的 CAKeyframeAnimation,通过插值形成一条通过各关键帧的动画路径,但CABasicAnimation 更加灵活一些.
 1, @interface CABasicAnimation: CAPropertyAnimation
 2, @property(nullable, strong) id fromValue;
 3, @property(nullable, strong) id toValue;
 4, @property(nullable, strong) id byValue;
 5, @end
 
 我们可以通过上面三个值来规定 CABasicAnimation 的动画起止状态
 1, 这三个属性都是可选的,通常给定其中一个或者两个,一下是官方建议的使用方式
    给定 fromValue和 toValue, 将在两者之间进行插值*
 2, 给定 fromValue和 byValue, 将在 fromValue和 fromValue+byValue之间插值*
 3, 给定 byValue和 toValue, 将在 toValue - byValue 和 toValue 之间插值*
 4, 仅给定 fromValue,将在 fromValue 和当前值之间插值*
 5, 仅给定toValue，将在当前值和toValue之间插值 *
 6, 仅给定byValue，将在当前值和当前值+byValue之间插值 *
 
 在CAKeyframeAnimation中，除了给定各关键帧之外还可以指定关键帧之间的时间和时间函数：
 1, @interface CAKeyframeAnimation: CAPropertyAnimation
 2, @property(nullable, copy) NSArray *values;
 3, @property(nullable, copy) NSArray <NSNumber *> *keyTimes;
 4, 事件函数有线性,淡入,淡出等简单效果,还可以指定一条三次贝塞尔曲线
 5, @property(nullable, copy) NSArray <CAMediaTimingFunction *> *timingFunctions;
 6, @end
 
 所谓动画实际上就是在不同的时间显示不同画面,时间在走进而形成连续变化的效果.所以,动画的关键及时对时间的控制.
 
 CAMediaTiming:
 
 CAMeidaTiming 是 CoreAnimation中一个非常重要的协议, CALayer 和 CAAnimation 都实现了它来对时间进行管理.
 1, @protocol CAMediaTiming
 2, @property CFTimeInterval beginTime;
 3, @property CFTimeInterval duration;
 4, @property float speed;
 // timeOffset时间的偏移量,用它可以实现动画的暂停,继续等效果
 5, @property CFTimeInterval timeOffset;
 6, @property float repeatCount;
 7, @property CFTimeInterval repeatDuration;
 // autoreverses为 true时时间结束后会原路返回,默认为 false
 8, @property BOOL autoreverses;
 // fillMode 填充模式,有4种
 9, @property (copy) NSString *fillMode;
 
 */

@interface CAAnimationViewController ()

@end

@implementation CAAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
