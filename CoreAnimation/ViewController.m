//
//  ViewController.m
//  CoreAnimation
//
//  Created by 林文锐 on 2018/10/23.
//  Copyright © 2018年 林文锐. All rights reserved.
//

#import "ViewController.h"

/**
 CALayer
 为什么 UIView 要加一层 Layer 来负责显示呢?我们知道 QuartzCore 是跨 iOS和 macOS 平台的,而 UIView 属于UIKit 是 iOS 开发使用的,在 macOS中对应 AppKit里的 NSView. 这是因为 macOS是基于鼠标指针操作的系统,与 iOS的多点触控有本质的区别,虽然 iOS在交互上与 macOS有所不同,但在显示层面却可以y使用同一套技术.
 每一个 UIView 都有个属性 layer, 默认为 CALayer类型,也可以使用自定义的Layer
 
view的leyer，view是layer的代理
@property(nonatomic, readonly, strong) CALayer *layer;
 
 可以想象我们看到的View其实都是它的layer，下面我们通过CALayer中的集合相关的属性来认识它：
 1. bounds:图层的 bounds 是一个 CGRect 的值,指定图层的大小(bounds.size)和原点(hounds.origin)
 2. position:指定图层的位置(相对于父图层而言)
 3. anchorPoint:锚点指定了 position 在当前图层中的位置,坐标范围0~1.position 点的值是相对于父图层的,而这个 position 到底位于当前图层的什么地方,是由锚点决定的(默认在图层中心,即锚点位(0.5,0.5))
 4. transform:指定图层的几何变换,x类型为 CATransform3D
 
 隐式动画:
    这些属性的注释最后都有一句 Animatable, 就是说我们可以通过改变这些属性来实现动画.默认的,我们修改这些属性都会导致图层从旧值动画显示为新值,称为隐式动画.
    注意到 frame 的注释里面没有Animatable,我们可以理解为图层的 frame 并不是一个真实的属性,当我们读取 frame 时,会根据图层的 position,bounds,anchorPoint 和 transform 的值计算出它的 frame, 而当我们设置 frame 时,图层会根据 anchorPoint 改变 position和 bounds, 也就是说 frame 本身并没有被保存.
 
 图层不但给自己提供可视化的内容和管理动画,而且充当了其他图层的容器类,构建图层层次结构
 
 图层树类似于UIView 的层次结构, 一个view 实例拥有父视图(superView)和子视图(subView);同样一个 layer 也有父图层(superLayer)和子图层(subLayer).我们可以直接在 view 的 layer 上添加子 layer 达到一些显示效果,但这些单独的 layer 无法像 UIView 那样进行交互响应.
 
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
