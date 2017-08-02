//
//  ALEXBaseController.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

/// 基类
#import "ALEXBaseController.h"


@interface ALEXBaseController ()

@end

@implementation ALEXBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
}


- (void)setupUI {
    
    // 创建 导航条
    UINavigationBar *navBar = [[UINavigationBar alloc] init];
  
    // 添加到 父控件
    [self.view addSubview:navBar];
    
    // 设置 约束条件
    [navBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.offset(0);
    }];
    
    
    // 向导航条 添加navItem
    UINavigationItem *navItem = [[UINavigationItem alloc] init];
    
    // 把navItem设置到导航条上'建立它和导航条控件的关系'
    [navBar setItems:@[navItem]];
    
    // 为属性赋值
    _navBar = navBar;
    _navItem = navItem;
  
}



// 处理 内存警告
- (void)didReceiveMemoryWarning {
    // 继承 父类
    [super didReceiveMemoryWarning];
    
    
    if (self.isViewLoaded && self.view.window == nil) {
        
        self.view = nil;
    }
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
