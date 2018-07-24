//
//  ViewController.m
//  父子控制器
//
//  Created by aqiang on 2018/7/24.
//  Copyright © 2018年 aqiang. All rights reserved.
//

#import "ViewController.h"
#import "SocietyViewController.h"
#import "FirstNewsViewController.h"
#import "HotNewsViewController.h"

/*
 多控制器：当有很多控制器，急哦啊给一个大控制器管理
 父子控制器：UINavigationController、UITabController
 父子控制器本质：搞一个控制器容器，管理很多子控制器
 
 模仿UITabBarController，写一个自己的UITabBarController，条在上面
 
 任何控制器都可能是一个容器控制器。因为任何控制器都可以调用addChildViewController
 
// 父子控制器：如果一个控制器的view显示,那么这个控制器必须存在！
 
 */

/*
 存在问题：
 1、每次都需要创建控制器
 2、每次都会添加界面，只是想显示当前显示的view，其他view移除
 3、每次控制器都会销毁
 使用属性来控制
 
 
 
// UITabBarController实现步骤
 1、显示控制器UITabBarController
 2、给控制器添加子控制器
 3、
 */


#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *contentView;

@end

@implementation ViewController

- (IBAction)showViewController:(UIButton *)sender {
//    先移除之前控制器的view
    UIView *firstView;
    if (self.contentView.subviews.count > 0) {
        firstView = self.contentView.subviews[0];
        
    }
//    显示子控制器
    UIViewController *vc = self.childViewControllers[sender.tag];
    vc.view.frame = self.contentView.bounds;
    [self.contentView addSubview:vc.view];
//    先添加view之后再移除
    [firstView removeFromSuperview];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    1、添加子控制器
    [self setUpAllChildViewController];
//    2、设置按钮标题
    
    
    
}

- (void)setUpAllChildViewController{
    
//    社会
    SocietyViewController *society = [[SocietyViewController alloc]init];
    [self addChildViewController:society];
//    头条
    FirstNewsViewController *first = [[FirstNewsViewController alloc]init];
    [self addChildViewController:first];
//    热点
    HotNewsViewController *hotNews = [[HotNewsViewController alloc]init];
    [self addChildViewController:hotNews];
    
}





@end
