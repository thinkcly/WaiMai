//
//  ALEXNavigationController.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

#import "ALEXNavigationController.h"
#import "ALEXBaseController.h"

@interface ALEXNavigationController ()

@end

@implementation ALEXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 隐藏 导航控制器自带的导航条
    self.navigationBar.hidden = YES;
}


//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {     // 注意 应该将UIViewController 更改为 基类 ALEXBaseController, 这样才可以修改 navItem
//    
//}

// 重写 父类的push方法
- (void)pushViewController:(ALEXBaseController *)viewController animated:(BOOL)animated {
    
    // 继承 父类
    [super pushViewController:viewController animated: animated];
    
    // 如果 子控制器数量 > 1
    if (self.childViewControllers.count > 1) {
        
        // 自定义 leftButtonItem, 将其修改为 图片
        viewController.navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_backItem"] style:UIBarButtonItemStylePlain target:self action:@selector(backButton)];
        
        NSLog(@"%@", viewController.navItem);       // 输出测试
    }
    
    
    
}


// 点击左侧返回按钮, 执行 "返回" 操作
- (void)backButton {
    
    // 带有动画效果
    [self popViewControllerAnimated:YES];
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
