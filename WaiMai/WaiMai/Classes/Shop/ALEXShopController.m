//
//  ALEXShopController.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

#import "ALEXShopController.h"
#import "ALEXFoodDetailController.h"

@interface ALEXShopController ()

@end

@implementation ALEXShopController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
    
}


- (void)setupUI {
    
    // 设置 背景颜色
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 设置 导航栏的标题
//    self.navigationItem.title = @"商店";
    
    // 设置 导航栏的标题和主题色
    self.navItem.title = @"商店";
    self.navBar.barTintColor = [UIColor redColor];
    
    
    
}





// 点击屏幕时, 调用此方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 创建 "实物详情控制器"
    ALEXFoodDetailController *foodDetailVC = [[ALEXFoodDetailController alloc] init];
    
    // Push 实物详情控制器, 并且带有动画效果
    [self.navigationController pushViewController:foodDetailVC animated:YES];
    
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
