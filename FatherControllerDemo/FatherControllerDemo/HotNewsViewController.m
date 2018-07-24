//
//  HotNewsViewController.m
//  父子控制器
//
//  Created by aqiang on 2018/7/24.
//  Copyright © 2018年 aqiang. All rights reserved.
//

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#import "HotNewsViewController.h"

@interface HotNewsViewController ()

@end

@implementation HotNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.frame = CGRectMake(0, 64, WIDTH, HEIGHT-64);
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
